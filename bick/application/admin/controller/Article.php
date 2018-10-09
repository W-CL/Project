<?php
namespace app\admin\controller;
use app\admin\controller\Common;
use app\admin\model\Cate as CateModel;
use app\admin\model\Article as ArticleModel;
use think\Request;
class Article extends Common{
	//管理
    public function lst(){
        $artres=db('article')->field('a.*,b.catename')->alias('a')->join('bk_cate b','a.cateid=b.id')->order('a.id desc')->paginate(10);
        $this->assign('artres',$artres);
        return view(); 
    }
    //添加
    public function add(){
        if(request()->isPost()){
            $data=input('post.');
            $data['time']=time();
            $validate=\think\loader::validate('article');
            if(!$validate->scene('add')->check($data)){
                $this->error($validate->getError());
            }
            $article=new ArticleModel();
            if($article->save($data)){
                $this->success('添加文章成功',url('article/lst'));
            }else{
                $this->error('添加文章失败');
            }
        }
          
        $cate=new CateModel();
        $cateres=$cate->catetree();
        $this->assign('cateres',$cateres);
        return view(); 
        
    }
    //修改 
    public function edit(){
        if(request()->isPost()){
            $data=input('post.');
            $validate=\think\loader::validate('article');
            if(!$validate->scene('edit')->check($data)){
                $this->error($validate->getError());
            }
            $article=new ArticleModel();
            $save=$article->update($data);
            if($save!==false){
                $this->success('修改文章成功',url('article/lst'));

            }else{
                $this->error('修改文章失败');
            }
            return;
        }
        $cate=new CateModel();
        $cateres=$cate->catetree();
        $arts=db('article')->find(input('id'));
        $this->assign(array('cateres'=>$cateres,'arts'=>$arts));

        return view(); 
    }
    //删除
    public function del(){
        if(ArticleModel::destroy(input('id'))){
                $this->success('删除文章成功',url('article/lst'));

            }else{
                $this->error('删除文章失败');
            }
    }	
}
?>