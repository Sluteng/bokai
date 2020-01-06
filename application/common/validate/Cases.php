<?php
namespace app\common\validate;

use think\Validate;

class Cases extends Validate
{
    protected $rule = [
        "main|案例分类标题" => "require",
        "name|案例名称" => "require",
        "img|缩略图" => "require",
    ];
}
