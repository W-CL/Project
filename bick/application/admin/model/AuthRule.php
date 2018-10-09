<?php
namespace app\admin\model;
use think\Model;
class AuthRule extends Model{
	public function authRuleTree(){
    	$authRuleres=$this->order('sort desc')->select();
    	return $this->sort($authRuleres);
	}
	public function sort($data,$pid=0){
		static $arr=array();
		foreach ($data as $k => $v) {
			if($v['pid']==$pid){
        $v['dataid']=$this->getparentid($v['id']);
				$arr[]=$v;
				$this->sort($data,$v['id']);
			}
		}
		return $arr;
   }
   //删除
   	public function getchilrenid($authRuleid){
   		$AuthRuleRes=$this->select();
   		return $this->_getchilrenid($AuthRuleRes,$authRuleid);

   }
   	public function _getchilrenid($AuthRuleRes,$authRuleid){
   		static $arr=array();
      foreach ($AuthRuleRes as $k => $v) {
   			if($v['pid']==$authRuleid){
	   			$arr[]=$v['id'];//找到顶级权限的的子栏目
	   			$this-> _getchilrenid($AuthRuleRes,$v['id']);//再查找该子权限下的子权限，递归到最后。

   			}
   		}
   			return $arr;//所有子权限的ID
   	}

    public function getparentid($authRuleid){
      $AuthRuleRes=$this->select();
      return $this->_getparentid($AuthRuleRes,$authRuleid,True);

   }
    public function _getparentid($AuthRuleRes,$authRuleid,$clear=False){
      static $arr=array();
      if($clear){
        $arr=array();
      }
      foreach ($AuthRuleRes as $k => $v) {
        if($v['id']==$authRuleid){
          $arr[]=$v['id'];
          $this-> _getparentid($AuthRuleRes,$v['pid'],False);
        }
      }
        asort($arr);
        $arrStr=implode('-',$arr);
        return $arrStr;
    }
	
}

?>