<?php
namespace app\admin\validate;
use think\Validate;
class Conf extends Validate{
    

    protected $rule =[
        'cnname'=>'require|unique:conf|max:25',
        'enname'=>'require|unique:conf|max:25',
        'type'=>'require',
    ];

    protected $message=[
        'cnname.require'=>'中文名称不能为空',
        'cnname.unique'=>'中文名称不能重复',
        'cnname.max'=>'中文名称大于25个字符',
        'enname.require'=>'英文名称不能为空',
        'enname.unique'=>'英文名称不能重复',
        'enname.max'=>'英文名称大于25个字符',
        'type.require'=>'配置类型不能为空',

        

    ];
    protected $scene=[
        'add'=>['cnname','enname','type'],
        'edit'=>['cnname','enname'],
    ];


            
 }
?>