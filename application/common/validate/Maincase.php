<?php
namespace app\common\validate;

use think\Validate;

class Maincase extends Validate
{
    protected $rule = [
        "name|案例分类" => "require",
    ];
}
