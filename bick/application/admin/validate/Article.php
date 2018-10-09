<?php
namespace app\admin\validate;
use think\Validate;
class Article extends Validate{
    

    protected $rule =[
        'title'=>'require|unique:article|max:90',
        'keywords'=>'require|max:60',
        'desc'=>'require|max:90',
        'author'=>'require|max:25',
        'content'=>'require',
    ];

    protected $message=[
        'title.require'=>'文章标题不能为空',
        'title.unique'=>'文章标题不能重复',
        'title.max'=>'文章标题大于90个字符',
        'keywords.require'=>'关键字不能为空',
        'keywords.max'=>'关键字大于60个字符', 
        'desc.require'=>'文章描述不能为空',
        'desc.max'=>'文章描述大于90个字符', 
        'author.require'=>'作者名称不能为空',
        'author.max'=>'作者名称大于25个字符',
        'content.require'=>'内容不能为空',


    ];
    protected $scene=[
        'add'=>['title','keywords','desc','author','content'],
        'edit'=>['title','keywords','author','content'],
    ];


            
 }
?>