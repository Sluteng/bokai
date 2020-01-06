<?php
namespace app\admin\controller;

\think\Loader::import('controller/Controller', \think\Config::get('traits_path') , EXT);

use app\admin\Controller;

class Center extends Controller
{
    use \app\admin\traits\controller\Controller;
    // 方法黑名单
    protected static $blacklist = [];

    protected function filter(&$map)
    {
        if ($this->request->param("name")) {
            $map['name'] = ["like", "%" . $this->request->param("name") . "%"];
        }
        if ($this->request->param("email")) {
            $map['email'] = ["like", "%" . $this->request->param("email") . "%"];
        }
        if ($this->request->param("tellphon")) {
            $map['tellphon'] = ["like", "%" . $this->request->param("tellphon") . "%"];
        }
        if ($this->request->param("subject")) {
            $map['subject'] = ["like", "%" . $this->request->param("subject") . "%"];
        }
    }
}
