<?php
namespace app\admin\controller;
use app\admin\controller\Common;
use app\admin\model\Conf as ConfModel; 
class Conf extends Common{
    public function lst(){
        if(request()->isPost()){
            $sorts=input('post.');
            $conf=new ConfModel();
            foreach ($sorts as $k => $v) {
                $conf->update(['id'=>$k,'sort'=>$v]);
            }
            $this->success('更新排序成功',url('conf/lst'));
            return;
        }
        $confres=ConfModel::order('sort desc')->paginate(3);
        $this->assign('confres',$confres);

        return view();
    }
    
    public function add(){
        if(request()->ispost()){
            $data=input('post.');
            $validate=\think\loader::validate('conf');
            if(!$validate->scene('add')->check($data)){
                $this->error($validate->getError());
            }
            if($data['values']){
                $data['values']=str_replace('，',',',$data['values']);
            }
            $conf=new ConfModel();
            $save=$conf->save($data);
            if($save){
                $this->success('添加配置成功',url('conf/lst'));
            }else{
                $this->error('添加配置失败');

            }

        }
        return view();
    }

    public function edit(){
        if(request()->ispost()){
            $data=input('post.');
            $validate=\think\loader::validate('conf');
            if(!$validate->scene('edit')->check($data)){
                $this->error($validate->getError());
            }
            if($data['values']){
                $data['values']=str_replace('，',',',$data['values']);
            }
            $conf=new ConfModel();
            $save=$conf->save($data,['id'=>$data['id']]);
            if($save!==false){
                $this->success('修改配置成功',url('conf/lst'));
            }else{
                $this->error('修改配置失败');

            }
        }
        $confs=ConfModel::find(input('id'));
        $this->assign('confs',$confs);
        return view();
    }

    public function del(){
        $del=ConfModel::destroy(input('id'));
        if($del){
            $this->success('删除配置成功',url('conf/lst'));
        }else{
            $this->error('删除配置失败');
        }
        return view();
    }

    public function conf(){
        if(request()->ispost()){
            $data=input('post.');
            $formarr=array();
             foreach ($data as $k => $v) {
                $formarr[]=$k;
            }
            $_confarr=db('conf')->field('enname')->select();
            $confarr=array();
            foreach ($_confarr as $k => $v) {
                $confarr[]=$v['enname'];
            }
            $checkboxarr=array();
            foreach ($confarr as $k => $v) {
                if(!in_array($v,$formarr)){
                    $checkboxarr[]=$v;
                        
                }

            }
            if($checkboxarr){ 
                foreach ($checkboxarr as $key => $v) {
                    ConfModel::where('enname',$v)->update(['value'=>'']);
                }
            }
            if($data){ 
                foreach ($data as $k => $v) {
                    ConfModel::where('enname',$k)->update(['value'=>$v]);
                } 
                $this->success('修改配置成功');
            }
           
            return;
        }
        $confres=ConfModel::order('sort desc')->select();
        $this->assign('confres',$confres);
        return view();
    }
}
?>