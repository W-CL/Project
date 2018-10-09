<?php
namespace app\admin\model;
use think\Model;
class Admin extends Model{
    public function addadmin($data){
      if(empty($data)||!is_array($data)){
      	return false;
      }
      //加密
      if($data['password']){
      		$data['password']=md5($data['password']);
      }
      $adminData=array();
      $adminData['name']=$data['name'];
      $adminData['password']=$data['password'];
      if($this->save($adminData)){
        $groupAccess['uid']=$this->id;
        $groupAccess['group_id']=$data['group_id'];
        db('auth_group_access')->insert($groupAccess);
      	return true;
      }else{
      	return false;
      }
     
    } 
    public function getadmin(){
      	return $this::paginate(5);
      }
    public function saveadmin($date,$admins){
        if(!$date['name']){
          return 2;//管理员名称不能为空
        }
        if(!$date['password']){
            $date['password']=$date['password'];
        }else{
            $date['password']=md5($date['password']);
        }
        

        db('auth_group_access')->where(array('uid'=>$date['id']))->update(['group_id'=>$date['group_id']]);
        //$res=db('admin')->update($date);方法1
        return $this::update(['name'=>$date['name'],'password'=>$date['password'],'id'=>$date['id']]);
       
      }
      public function deladmin($id){
        if($this::destroy($id)){
          return 1;
        }else{
          return 2;
        }

      }
      public function login($date){
        $admin=Admin::getByName($date['name']);
        if($admin){
          if($admin['password']==md5($date['password'])){
            session('id',$admin['id']);
            session('name',$admin['name']);
            return 2;//正确
          }else{
              return 3;//登录密码错误
          }
        }else{
          return 1;//用户不存在
        }
      }
     
}

?>