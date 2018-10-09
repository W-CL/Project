<?php
namespace app\index\model;
use think\Model;
use app\index\model\Cate;
class Article extends Model 
{
	public function getAllArticles($cateid){
		$cate=new Cate();
		$allCateId=$cate->getchilrenid($cateid);
		$artRes=db('article')->where("cateid IN($allCateId)")->order('id desc')->paginate(3);
		return $artRes;
	}

	public function getHostRes($cateid){
		$cate=new Cate();
		$allCateId=$cate->getchilrenid($cateid);
		$artRes=db('article')->where("cateid IN($allCateId)")->order('click desc')->limit(6)->select();
		return $artRes;
	}

	//搜索页的热点文章
	public function getSerHost(){
		$artRes=db('article')->order('click desc')->limit(6)->select();
		return $artRes;
	}
	
	public function getSiteHot(){
		$siteHotArt=$this->field('id,thumb,title')->order('click desc')->limit(5)->select();
		 return $siteHotArt;
	}

	public function getNewArticle(){
	$newArticleRes=db('article')->field('a.id,a.title,a.thumb,a.praise,a.click,a.time,a.desc,c.catename,c.id Id')->alias('a')->join('bk_cate c','a.cateid=c.id')->order('a.id desc')->limit(6)->select();
	return $newArticleRes;
	}

	public function getRecArt(){
	 	$recArt=$this->where('rec','=',1)->field('id,title,thumb')->order('id desc')->limit(4)->select();
	 	return $recArt;
	 }  

}
