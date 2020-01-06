<?php
namespace app\index\controller;

use think\Controller;
use think\Loader;

class Infor extends Controller
{
    public function infor()
    {
         require_once('Base.php');   
         $infResult=$navberModel->where([
                        'isdelete'=>0,
                        'status'=>1,
                        'id'=>8
          ])->limit(1)->select(); 
          $inforModel=Loader::model('Infor');
          $inforResult=$inforModel->where([
                         'isdelete'=>0,
                         'status'=>1,
           ])->order('sort=0 asc,sort asc,id asc')->select(); 
           // return json($inforResult);
        //   $newsaResult=$newsaModel->where([
        //                 'isdelete'=>0,
        //                 'status'=>1,
        //                 'home'=>1
        // ])->order('sort=0 asc,sort asc,id desc')->field('name')->limit(1)->select();          
         // return json("aaa"); 
                return $this->view->fetch('',[
                  'infResult'=>$infResult,
                  'inforResult'=>$inforResult,
                       ]);

    }
}
