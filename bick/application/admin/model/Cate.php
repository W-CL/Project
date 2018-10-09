<?php
namespace app\admin\model;
use think\Model;
class Cate extends Model{
	//无限级显示
	public function catetree(){
    	$cateres=$this->order('sort desc')->select();
    	return $this->sort($cateres);
	}
	public function sort($data,$pid=0,$level=0){
		static $arr=array();
		foreach ($data as $k => $v) {
			if($v['pid']==$pid){
				$v['level']=$level;
				$arr[]=$v;
				$this->sort($data,$v['id'],$level+1);
			}
		}
		return $arr;
   }
   //删除
   	public function getchilrenid($cateid){
   		$cateres=$this->select();
   		return $this->_getchilrenid($cateres,$cateid);

   }
   	public function _getchilrenid($cateres,$cateid){
   		static $arr=array();
   		foreach ($cateres as $k => $v) {
   			if($v['pid']==$cateid){
	   			$arr[]=$v['id'];//找到顶级栏目的的子栏目
	   			$this-> _getchilrenid($cateres,$v['id']);//再查找该子栏目下的子栏目，递归到最后。

   			}
   		}
   			return $arr;//所有子栏目的ID
   	}
}

?>