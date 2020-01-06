<?php
namespace app\common\validate;

use think\Validate;

class Navber extends Validate
{
    protected $rule = [
        "name|导航名称" => "require",
        "href|导航链接" => "require",
    ];
}
