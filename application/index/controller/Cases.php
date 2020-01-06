<?php
namespace app\index\controller;

use think\Controller;
use think\Loader;

class Cases extends Controller
{
    public function cases()
    {
         require_once('Base.php');   
         $maincResult=$navberModel->where([
                        'isdelete'=>0,
                        'status'=>1,
                        'id'=>3
          ])->limit(1)->select();
         $maincaseModel=Loader::model('Maincase');
         $maincaseResult=$maincaseModel->where([
                        'isdelete'=>0,
                        'status'=>1
          ])->order('sort=0 asc,sort asc,id asc')->select();
         $mainc=null; 
         $casesModel=Loader::model('Cases');
         $casesResult=$casesModel->where([
                 'isdelete'=>0,
                 'status'=>1
             ])->order('sort=0 asc,sort asc,id desc')
               ->paginate(8,false,['path'=>'/casesp/[PAGE].html',
                                   'page' => input('param.p'),
                                      ]);
               // return json($casesResult);
            $page = $casesResult->render();        
         // return json("aaa"); 
                return $this->view->fetch('',[
                  'maincResult'=>$maincResult,
                  'maincaseResult'=>$maincaseResult,
                  'mainc'=>$mainc,
                  'casesResult'=>$casesResult,
                  'page'=>$page,
                       ]);

    }
    public function case1($id)
    {
         require_once('Base.php');
         $maincaseModel=Loader::model('Maincase');
         $maincaseResult=$maincaseModel->where([
                        'isdelete'=>0,
                        'status'=>1
          ])->order('sort=0 asc,sort asc,id asc')->select();
         $maincResult=$maincaseModel->where([
                        'isdelete'=>0,
                        'status'=>1,
                        'id'=>$id
          ])->limit(1)->select();
         $arr1=i_array_column($maincResult,'name');
         $mainc=reset($arr1);
         // return json($mainc); 
         $casesModel=Loader::model('Cases');
         $casesResult=$casesModel->where([
                 'isdelete'=>0,
                 'status'=>1,
                 'main'=>$mainc
             ])->order('sort=0 asc,sort asc,id desc')
               ->paginate(8,false,['path'=>'/case1p/'.$id.'/[PAGE].html',
                                   'page' => input('param.p'),
                                      ]);
            // return json($casesResult);
            $page = $casesResult->render();        
             // return json("aaa"); 
                return $this->view->fetch('cases',[
                  'maincaseResult'=>$maincaseResult,
                  'maincResult'=>$maincResult,
                  'mainc'=>$mainc,
                  'casesResult'=>$casesResult,
                  'page'=>$page,
                       ]);
    }
    public function casea($id)
    {
         require_once('Base.php');
         $maincaseModel=Loader::model('Maincase');
         $maincaseResult=$maincaseModel->where([
                        'isdelete'=>0,
                        'status'=>1
          ])->order('sort=0 asc,sort asc,id asc')->select();
         $casesModel=Loader::model('Cases');
         $casesResult=$casesModel->where([
                 'isdelete'=>0,
                 'status'=>1,
                 'id'=>$id
             ])->limit(1)->select();
         $arr1=i_array_column($casesResult,'main');
         $mainc=reset($arr1); 
          //上一页
        $prev=$casesModel->where([
                'isdelete'=>0,
                'status'=>1,
                'main'=>$mainc,
                'id' => ['<',$id]
            ])->order('id','desc')->limit(1)->select();
        // return json($prev);
        //下一页
        $next=$casesModel->where([
            'isdelete'=>0,
            'status'=>1,
            'main'=>$mainc,
            'id' => ['>',$id]
            ])->order('id','asc')->limit(1)->select();
         return $this->view->fetch('',[
           'maincaseResult'=>$maincaseResult,
           'mainc'=>$mainc,
           'casesResult'=>$casesResult,
           'prev'=>$prev,
           'next'=>$next,
                ]);
    }
    public function casew($id)
    {
         require_once('Base.php');
         $maincaseModel=Loader::model('Maincase');
         $maincaseResult=$maincaseModel->where([
                        'isdelete'=>0,
                        'status'=>1
          ])->order('sort=0 asc,sort asc,id asc')->select();
         $casesModel=Loader::model('Cases');
         $casesResult=$casesModel->where([
                 'isdelete'=>0,
                 'status'=>1,
                 'id'=>$id
             ])->limit(1)->select();
         $mainc=null; 
          //上一页
        $prev=$casesModel->where([
                'isdelete'=>0,
                'status'=>1,
                'id' => ['<',$id]
            ])->order('id','desc')->limit(1)->select();
        //下一页
        $next=$casesModel->where([
            'isdelete'=>0,
            'status'=>1,
            'id' => ['>',$id]
            ])->order('id','asc')->limit(1)->select();
         return $this->view->fetch('casea',[
           'maincaseResult'=>$maincaseResult,
           'mainc'=>$mainc,
           'casesResult'=>$casesResult,
           'prev'=>$prev,
           'next'=>$next,
                ]);
    }
}
