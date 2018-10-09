<?php
namespace app\index\controller;

class Index extends Common 
{
    public function index()
    {
    	//首页最新文章调用
    	$articleM=new \app\index\model\Article();
    	$newArticleRes=$articleM->getNewArticle();
    	$siteHotArt=$articleM->getSiteHot();
    	$recArt=$articleM->getRecArt();
        //友情链接数据
    	$linkRes=db('link')->order('sort desc')->select();
        //获取推荐栏目
        $cateM=new \app\index\model\Cate();
        $resIndex=$cateM->getResIndex();
    	$this->assign(array(
    		'newArticleRes'=>$newArticleRes,
    		'siteHotArt'=>$siteHotArt,
    		'linkRes'=>$linkRes,
    		'recArt'=>$recArt,
            'resIndex'=>$resIndex,
            
    		));
    	return view();
    } 
        
}       

