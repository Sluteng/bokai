<?php
namespace app\common\validate;

use think\Validate;

class Honor extends Validate
{
    protected $rule = [
        "img|荣誉证书" => "require",
        "name|名称" => "require",
    ];
}
