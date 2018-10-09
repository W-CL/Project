<?php
namespace app\admin\model;
use think\Model;
class Article extends Model{
	protected static function init(){
        //上传图片
		Article::event('before_insert',function($data){
			if($_FILES['thumb']['tmp_name']){
                $file   =   request()->file('thumb'); 
                $info   =   $file->move(ROOT_PATH   .   'public'    .   DS  .   'uploads');
                if($info){
                    $thumb='/bick/'  .   'public'    .   DS  .   'uploads'.'/'.$info->getSavename();
                     $data['thumb']=$thumb;
                }  
           } 
		});
        //更新图片
        Article::event('before_update',function($data){
            if($_FILES['thumb']['tmp_name']){
                $arts=Article::find($data->id);
                $thumbpath= $_SERVER['DOCUMENT_ROOT'].$arts['thumb'];
                if(file_exists($thumbpath)){
                    @unlink($thumbpath);

               }
                $file   =   request()->file('thumb'); 
                $info   =   $file->move(ROOT_PATH   .   'public'    .   DS  .   'uploads');
                if($info){
                    $thumb='/bick/'  .   'public'    .   DS  .   'uploads'.'/'.$info->getSavename();
                    $data['thumb']=$thumb;
                } 
                
            } 
        });
         //删除图片
        Article::event('before_delete',function($data){   
                $arts=Article::find($data->id);
                $thumbpath= $_SERVER['DOCUMENT_ROOT'].$arts['thumb'];
                if(file_exists($thumbpath)){
                    @unlink($thumbpath);

               } 
            
        });
    
   }
	
}

?>