<?php
namespace app\index\controller;
use think\Controller;
class Common extends Controller
{
    public function _initialize()
    {	

        //当前位置
        if(input('cateid')){
            $this->getPos(input('cateid'));
        }
        if(input('artid')){
            $articles=db('article')->field('cateid')->find(input('artid'));
            $cateid=$articles['cateid'];
            $this->getPos($cateid);
        }
        //网站配置项
        $this->getConf();
        //网站栏目导航
        $this->getNavCates();
        //网站底部导航
        $cateM=new \app\index\model\Cate();
        $resBottom=$cateM->getResBottom();
        $this->assign( 'resBottom',$resBottom);
    }
   
    public function getNavCates(){
        $cateres=db('cate')->where(array('pid'=>0))->select();
        foreach ($cateres as $key => $value) {
            $children=db('cate')->where(array('pid'=>$value['id']))->select();
            if($children){
                $cateres[$key]['children']=$children;
            }else{
                $cateres[$key]['children']=0;
            }
        }
        $this->assign('cateres',$cateres);
    }

    public function getConf(){     
        $conf=new \app\index\model\Conf();
        $_confres=$conf->getAllConf();
        $confres=array();
        foreach ($_confres as $key => $value) {
            $confres[$value['enname']]=$value['cnname'];
        }
        $this->assign('confres',$confres);
    }
    public function getPos($cateid){
        $cate=new \app\index\model\Cate();
        $posArr=$cate->getparents($cateid);
        $this->assign('posArr',$posArr);
    }


             
}
