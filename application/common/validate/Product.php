<?php
namespace app\common\validate;

use think\Validate;

class Product extends Validate
{
    protected $rule = [
        "main|分类标题" => "require",
        "name|产品名称" => "require",
        "img|缩略图" => "require",
    ];
}
