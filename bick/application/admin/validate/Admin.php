<?php
namespace app\admin\validate;
use think\Validate;
class Admin extends Validate{
    

    protected $rule =[
        'name'=>'require|unique:admin',
        'password'=>'require|min:6',
        

    ];

    protected $message=[
        'name.require'=>'管理员名称不能为空',
        'name.unique'=>'管理员名称不能重复',
        'password.require'=>'管理员密码不能为空',
        'password.min'=>'管理员密码最短6个字符',
       

    ];
    protected $scene=[
        'add'=>['name','password'],
        'edit'=>['name','password'=>'min:6'],
    ];


            
 }
?>