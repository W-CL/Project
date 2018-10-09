<?php
namespace app\index\model;
use think\Model;
class Cate extends Model 
{
	public function getchilrenid($cateid){
		$cateres=$this->select();
		$arr=$this->_getchilrenid($cateres,$cateid);
		$arr[]=$cateid;
		$strId=implode(',',$arr);
		return $strId;
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
   public function getparents($cateid){
      $cateres=$this->field('id,pid,catename')->select();
      $cates=db('cate')->field('id,pid,catename')->find($cateid);
      $pid=$cates['pid'];
      if($pid){
         $arr=$this->_getparentsid($cateres,$pid);
      }
      $arr[]=$cates;
      return $arr;
   } 

   public function _getparentsid($cateres,$pid){
        static $arr=array();
        foreach ($cateres as $k => $v) {
            if($v['id'] == $pid){
                $arr[]=$v;
                $this->_getparentsid($cateres,$v['pid']);
            }
        }
        return $arr;
    }

    public function getResIndex(){
      $resindex=$this->order('id desc')->where('rec_index','=',1)->select();
      return $resindex;
    }

    public function getResBottom(){
      $resBottom=$this->order('id desc')->where('rec_bottom','=',1)->select();
      return $resBottom;
    }

    public function getCateInfo($cateid){
      $cateInfo=$this->field('desc,keywords,catename')->find($cateid);
      return $cateInfo;
    }

    
             
}
