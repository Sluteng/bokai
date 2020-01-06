<?php
namespace app\common\validate;

use think\Validate;

class Culture extends Validate
{
    protected $rule = [
        "title|标题" => "require",
    ];
}
