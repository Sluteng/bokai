<?php
namespace app\index\controller;

use think\Controller;
use think\Loader;

class Contact extends Controller
{
    public function contact()
    {
         require_once('Base.php'); 
         $conResult=$navberModel->where([
                        'isdelete'=>0,
                        'status'=>1,
                        'id'=>6
          ])->limit(1)->select();   
                return $this->view->fetch('',[
                  'conResult'=>$conResult,
                       ]);

    }
}
