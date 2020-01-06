<?php
namespace app\common\validate;

use think\Validate;

class Newsa extends Validate
{
    protected $rule = [
        "main|新闻分类标题" => "require",
        "name|新闻名称" => "require",
    ];
}
