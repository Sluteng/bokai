<?php
namespace app\admin\controller\Wenhua;

\think\Loader::import('controller/Controller', \think\Config::get('traits_path') , EXT);

use app\admin\Controller;

class Value extends Controller
{
    use \app\admin\traits\controller\Controller;
    // 方法黑名单
    protected static $blacklist = [];

    protected function filter(&$map)
    {
        if ($this->request->param("content")) {
            $map['content'] = ["like", "%" . $this->request->param("content") . "%"];
        }
    }
}
