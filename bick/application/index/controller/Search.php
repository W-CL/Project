<?php
namespace app\index\controller;
use app\index\model\Article;
class Search extends Common 
{
    public function index()
    {
        $article=new Article();
        $serHost=$article->getSerHost();
        $keywords=input('keywords');
        if($keywords!==false){
            $serRes=db('article')->order('id desc')->where('keywords|title','like','%'.$keywords.'%')->paginate(3,false,$config=['query'=>array('keywords'=>$keywords)]);
            $this->assign(array('serRes'=>$serRes,'keywords'=>$keywords,'serHost'=>$serHost));
        }
    	return view('search');
    }
             
}
