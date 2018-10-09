<?php
namespace app\admin\validate;
use think\Validate;
class Cate extends Validate{
    

    protected $rule =[
        'catename'=>'require|unique:cate|max:25',

    ];

    protected $message=[
        'catename.require'=>'栏目名称不能为空',
        'catename.unique'=>'栏目名称不能重复',
        'catename.max'=>'栏目名称大于25个字符',

    ];
    protected $scene=[
        'add'=>['catename'],
        'edit'=>['catename'],
    ];


            
 }
?>