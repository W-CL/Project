<?php
namespace app\admin\controller;
use app\admin\controller\Common;
use app\admin\model\Admin as AdminModel; 
class Admin extends Common{
    public function lst()
    {
        $auth=new Auth();
        $admin=new AdminModel();
        $adminres=$admin->getadmin();
        foreach ($adminres as $key => $value) {
            $_groupTitle=$auth->getGroups($value['id']);
            $groupTitle=$_groupTitle[0]['title'];
            $value['groupTitle']=$groupTitle;
            //var_dump($groupTitle);die;
        }
        $this->assign('adminres',$adminres);
        return view();
    }
    public function add()
    {
        //控制器 修改数据
        if(request()->isPost()){
            //$res=db('admin')->insert(input('post.'));
            $data=input('post.');
            $validate=\think\loader::validate('admin');
            if(!$validate->scene('add')->check($data)){
                $this->error($validate->getError());
            }
            $admin=new  AdminModel();
            if($admin->addadmin($data)){
                $this->success('添加管理员成功',url('lst'));
            }else{
                $this->error('添加管理员失败');
            }
            return;
        }
        $authGroupRes=db('auth_group')->select();
        $this->assign('authGroupRes',$authGroupRes);
        return view();
    }
    public function edit($id)
    { 
        $admins=db('admin')->field('id,name')->find($id);
        if(request()->isPost()){
            $data=input('post.');
            $validate=\think\loader::validate('admin');
            if(!$validate->scene('edit')->check($data)){
                $this->error($validate->getError());
            }
            $admin=new  AdminModel();
            $savenum=$admin->saveadmin($data,$admin);
             if($savenum=='2'){
               $this->error('管理员名称不能为空');
            }
             if( $savenum!==false){
                $this->success('修改管理员成功',url('lst'));
            }else{
                $this->error('修改管理员失败');
            }
            return;
        }
        $admins=db('admin')->find($id);
        if(!$admins){
            $this->error('该管理员不存在');
        }
        $authGroupAccess=db('auth_group_access')->where(array('uid'=>$id))->find();
        $authGroupRes=db('auth_group')->select();
        $this->assign(array('authGroupRes'=>$authGroupRes,'admin'=>$admins,'groupId'=>$authGroupAccess['group_id']));

        return view();
    }
    public function del($id){
        $admin=new AdminModel();
        $delnum=$admin->deladmin($id);
        if($delnum==1){
            $this->success('删除管理员成功',url('lst'));
        }else{
            $this->error('删除管理员失败');
            }
        }  
        public function logout(){
            session(null);
            $this->success('退出',url('logn/index'));
        }  
}
?>