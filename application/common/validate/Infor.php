<?php
namespace app\common\validate;

use think\Validate;

class Infor extends Validate
{
    protected $rule = [
        "position|职位" => "require",
        "telphon|联系电话" => "require",
        "work|工作地点" => "require",
    ];
}
