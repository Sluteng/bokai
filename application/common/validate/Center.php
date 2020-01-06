<?php
namespace app\common\validate;

use think\Validate;

class Center extends Validate
{
    protected $rule = [
        "name|姓名" => "require",
        "tellphon|电话" => "require",
    ];
}
