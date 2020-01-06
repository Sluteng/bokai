<?php
namespace app\admin\controller;

\think\Loader::import('controller/Controller', \think\Config::get('traits_path') , EXT);

use app\admin\Controller;

class Infor extends Controller
{
    use \app\admin\traits\controller\Controller;
    // 方法黑名单
    protected static $blacklist = [];

    protected function filter(&$map)
    {
        if ($this->request->param("position")) {
            $map['position'] = ["like", "%" . $this->request->param("position") . "%"];
        }
        if ($this->request->param("telphon")) {
            $map['telphon'] = ["like", "%" . $this->request->param("telphon") . "%"];
        }
        if ($this->request->param("work")) {
            $map['work'] = ["like", "%" . $this->request->param("work") . "%"];
        }
    }
}
