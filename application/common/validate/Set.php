<?php
namespace app\common\validate;

use think\Validate;

class Set extends Validate
{
    protected $rule = [
        "name|公司名称" => "require",
        "logo|LOGO" => "require",
    ];
}
