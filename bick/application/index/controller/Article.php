<?php
namespace app\index\controller;

class Article extends Common 
{
    public function index()
    {
    	$artid=input('artid');
    	db('article')->where(array('id'=>$artid))->setInc('click');
    	$articles=db('article')->find($artid);
    	$article=new  \app\index\model\Article();
    	$hostRes=$article->getHostRes($articles['cateid']);
    	$this->assign(array('articles'=>$articles,'hostRes'=>$hostRes,));
    	return view('article');
    }
             
}
