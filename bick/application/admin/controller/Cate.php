<?php
namespace app\admin\controller;
use app\admin\controller\Common;
use app\admin\model\Cate as CateModel; 
use app\admin\model\Article as ArticleModel; 
class Cate extends Common{
	protected $beforeActionList=[
		'delsoncate'=>['only'=>'del']
	];
	//管理
    public function lst()
    {
        $cate=new CateModel();
        //排序sort
        if(request()->isPost()){
        	$sorts=input('post.');
        	foreach ($sorts as $k => $v) {
        		$cate->update(['id'=>$k,'sort'=>$v]);
        	}
        	$this->success('更新排序成功',url('cate/lst'));
        	return;
        }
      	$cateres=$cate->catetree();
    	$this->assign('cateres',$cateres);
        return view();
    }
    //添加
    public function add(){
    	$cate=new CateModel();
    	if(request()->isPost()){
            $data=input('post.');
            var_dump($data);die;
            $validate=\think\loader::validate('cate');
            if(!$validate->scene('add')->check($data)){
                $this->error($validate->getError());
            }
			$cate->data($data);
			$add=$cate->save();
			if($add){
				$this->success('添加栏目成功',url('lst'));
			}else{
				$this->error('添加栏目失败');
			}
    	}
    	$cateres=$cate->catetree();
    	$this->assign('cateres',$cateres);
    	return view();
    }

    
 
     //编辑

    public function edit(){
		$cate=new CateModel();
		if(request()->isPost()){
            $data=input('post.');
            $validate=\think\loader::validate('Cate');
            if(!$validate->scene('edit')->check($data)){
                $this->error($validate->getError());
            }
			$save=$cate->save($data,['id'=>$data['id']]);
			if($save!==false){
				$this->success('编辑栏目成功',url('cate/lst'));
			}else{
				$this->error('编辑栏目失败');
			}
			return;
		}
		$cates=$cate->find(input('id'));
    	$cateres=$cate->catetree();
    	$this->assign(array(
    		'cateres'=>$cateres,
    		'cates'=>$cates,
    		));
    	return view();
    }
    //删除
    public function del(){
    	$del=db('cate')->delete(input('id'));
    	if($del){
    		$this->success('删除栏目成功',url('lst'));
    	}else{
    		$this->error('删除栏目失败');
    	}
    }
    //删除子栏目和子栏目下的文章
    public function delsoncate(){
     	$cateid=input('id');//要删除当前栏目的ID
     	$cate=new CateModel();
     	$sonids=$cate->getchilrenid($cateid);//所有子栏目的ID
        $allcateid=$sonids;
        $allcateid[]=$cateid;
        foreach ($allcateid as $k => $v) {
            $article= new ArticleModel();
            $article->where(array('cateid'=>$v))->delete();
        }
     	if($sonids){
     		db('cate')->delete($sonids);
     	}
     	
    }
   
}
?>