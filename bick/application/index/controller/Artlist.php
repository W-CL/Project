<?php
namespace app\index\controller;
use app\index\model\Article;
class Artlist extends Common 
{
    public function index()
    {
    	$article=new Article();
    	$artRes=$article->getAllArticles(input('cateid'));
    	$hostRes=$article->getHostRes(input('cateid'));
    	$cate=new \app\index\model\Cate();
    	$cateInfo=$cate->getCateInfo(input('cateid'));
    	$this->assign(array('artRes'=>$artRes,'hostRes'=>$hostRes,'cateInfo'=>$cateInfo,));
    	return view('artlist');
    }
             
}
