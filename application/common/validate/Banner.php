<?php
namespace app\common\validate;

use think\Validate;

class Banner extends Validate
{
    protected $rule = [
        "title|标题" => "require",
        "img|Banner图" => "require",
    ];
}
