<?php
namespace app\admin\validate;
use think\Validate;
class Link extends Validate{
    

    protected $rule =[
        'title'=>'require|unique:link|max:25',
        'desc'=>'require',
        'url'=>'require|unique:link|max:60|url',

    ];

    protected $message=[
        'title.require'=>'链接标题不能为空',
        'title.unique'=>'链接标题不能重复',
        'title.max'=>'链接标题大于25个字符',
        'desc.require'=>'链接描述不能为空',
        'url.require'=>'链接地址不能为空',
        'url.unique'=>'链接地址不能重复',
        'url.max'=>'链接地址大于60个字符',
        'url.url'=>'链接地址格式有误',

    ];
    protected $scene=[
        'add'=>['title','url','desc'],
        'edit'=>['title','url'],
    ];


            
 }
?>