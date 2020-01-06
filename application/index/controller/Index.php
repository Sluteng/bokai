<?php
namespace app\index\controller;

use think\Controller;
use think\Loader;

class Index extends Controller
{
    public function index()
    {
         require_once('Base.php');

          $mainModel=Loader::model('Main');
          $mainResult=$mainModel->where([
                         'isdelete'=>0,
                         'status'=>1,
                         'home'=>1
           ])->order('sort=0 asc,sort asc,id asc')->select(); 
           $productModel=Loader::model('Product');
           $productResult=$productModel->where([
                          'isdelete'=>0,
                          'status'=>1,
                          'top'=>1
            ])->order('sort=0 asc,sort asc,id asc')->select();
            $homeResult=$productModel->where([
                           'isdelete'=>0,
                           'status'=>1,
                           'home'=>1
             ])->order('sort=0 asc,sort asc,id asc')->limit(8)->select(); 
             $casesModel=Loader::model('Cases');
             $casesResult=$casesModel->where([
                            'isdelete'=>0,
                            'status'=>1,
                            'home'=>1
              ])->order('sort=0 asc,sort asc,id desc')->select(); 
              $aboutModel=Loader::model('About');
              $aboutResult=$aboutModel->where([
                             'isdelete'=>0,
                             'status'=>1
               ])->limit(1)->select();  
              $honorModel=Loader::model('ZizhiHonor');
              $honorResult=$honorModel->where([
                              'isdelete'=>0,
                              'status'=>1
                ])->limit(6)->select();
                $newsModel=Loader::model('News');
                $newsResult=$newsModel->where([
                                'isdelete'=>0,
                                'status'=>1,
                                'home'=>1
                  ])->order('sort=0 asc,sort asc,id asc')->select(); 
                  $newsaModel=Loader::model('Newsa');
                  $newsaResult=$newsaModel->where([
                                  'isdelete'=>0,
                                  'status'=>1,
                                  'home'=>1
                    ])->order('sort=0 asc,sort asc,id desc')->select();
                 $newshResult=$newsaModel->where([
                                 'isdelete'=>0,
                                 'status'=>1,
                                 'num'=>['>=',50]
                   ])->order('sort=0 asc,sort asc,num desc,id desc')->select();                 
         // return json($newshResult); 
                return $this->view->fetch('',[
                  'mainResult'=>$mainResult,
                  'productResult'=>$productResult,
                  'homeResult'=>$homeResult,
                  'casesResult'=>$casesResult,
                  'aboutResult'=>$aboutResult,
                  'honorResult'=>$honorResult,
                  'newsResult'=>$newsResult,
                  'newsaResult'=>$newsaResult,
                  'newshResult'=>$newshResult,
                       ]);

    }
}
