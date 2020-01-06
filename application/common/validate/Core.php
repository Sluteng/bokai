<?php
namespace app\common\validate;

use think\Validate;

class Core extends Validate
{
    protected $rule = [
        "img|图标" => "require",
        "title|名称" => "require",
    ];
}
