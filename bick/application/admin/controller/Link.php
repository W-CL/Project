<?php
namespace app\admin\controller;
use app\admin\controller\Common;
use app\admin\model\Link as LinkModel; 
class Link extends Common{
    public function lst()
    {
        //管理链接
        $link=new LinkModel();
        if(request()->isPost()){
        	$sorts=input('post.');
        	foreach ($sorts as $k => $v) {
        		$link->update(['id'=>$k,'sort'=>$v]);
        	}
        	$this->success('更新成功',url('link/lst'));
        	return;
        }
        $linkres=LinkModel::order('sort desc')->paginate(4);
        $this->assign('linkres',$linkres);
        return view();
    }
    //添加链接
    public function add()
    {
        if(request()->isPost()){
            $data=input('post.');
            $validate=\think\loader::validate('link');
            if(!$validate->scene('add')->check($data)){
                $this->error($validate->getError());
            }
            $add=db('link')->insert($data);
            
            if($add){
                $this->success('添加链接成功',url('link/lst'));

            }else{
                $this->error('添加链接失败');
            }

        }
        return view();
    }
    //修改链接
     public function edit()
    {   
        if(request()->isPost()){
            $data=input('post.');
            $validate=\think\loader::validate('link');
            if(!$validate->scene('edit')->check($data)){
                $this->error($validate->getError());
            }
            $link=new LinkModel();
            $save=$link->save($data,['id'=>$data['id']]);
            if($save!==false){
                $this->success('修改链接成功',url('link/lst'));

            }else{
                $this->error('修改链接失败');
            }


            return;
        }
        $links=LinkModel::find(input('id'));
        $this->assign('links',$links);
        return view();
    }
    //删除链接
    public function del(){
        $del=LinkModel::destroy(input('id'));
        if($del){
            $this->success('删除链接成功',url('link/lst'));
        }else{
            $this->error('删除链接失败');
        }
    }

}
?>