<?php
namespace app\index\controller;

use think\Controller;
use think\Loader;

class News extends Controller
{
    public function news()
    {
         require_once('Base.php');  
         $newResult=$navberModel->where([
                        'isdelete'=>0,
                        'status'=>1,
                        'id'=>4
          ])->limit(1)->select(); 
         $NewsModel=Loader::model('News');
         $NewsResult=$NewsModel->where([
                        'isdelete'=>0,
                        'status'=>1
          ])->order('sort=0 asc,sort asc,id asc')->select();
         $mains=null; 
         $NewsaModel=Loader::model('Newsa');
         $NewsaResult=$NewsaModel->where([
                        'isdelete'=>0,
                        'status'=>1
          ])->order('sort=0 asc,sort asc,id desc')
                ->paginate(6,false,['path'=>'/newsp/[PAGE].html',
                                    'page' => input('param.p'),
                                       ]);
            $page = $NewsaResult->render();   
         // return json($NewsaResult);    
                return $this->view->fetch('',[
                  'newResult'=>$newResult,
                  'NewsResult'=>$NewsResult,
                  'mains'=>$mains,
                  'NewsaResult'=>$NewsaResult,
                  'page'=>$page,
                       ]);

    }
    public function news1($id)
    {
         require_once('Base.php');  
         $NewsModel=Loader::model('News');
         $NewsResult=$NewsModel->where([
                        'isdelete'=>0,
                        'status'=>1
          ])->order('sort=0 asc,sort asc,id asc')->select();
         $newResult=$NewsModel->where([
                        'isdelete'=>0,
                        'status'=>1,
                        'id'=>$id
          ])->limit(1)->select();
          $arr1=i_array_column($newResult,'name');
          $mains=reset($arr1); 
          // return json($mains);
         $NewsaModel=Loader::model('Newsa');
         $NewsaResult=$NewsaModel->where([
                        'isdelete'=>0,
                        'status'=>1,
                        'main'=>$mains
          ])->order('sort=0 asc,sort asc,id desc')
            ->paginate(6,false,['path'=>'/news1p/'.$id.'/[PAGE].html',
                                    'page' => input('param.p'),
                                       ]);
          $page = $NewsaResult->render();   
         // return json($NewsaResult);    
                return $this->view->fetch('news',[
                  'newResult'=>$newResult,
                  'NewsResult'=>$NewsResult,
                  'mains'=>$mains,
                  'NewsaResult'=>$NewsaResult,
                  'page'=>$page,
                       ]);

    }
    public function newsa($id)
    {
         require_once('Base.php');  
         $NewsModel=Loader::model('News');
         $NewsResult=$NewsModel->where([
                        'isdelete'=>0,
                        'status'=>1
          ])->order('sort=0 asc,sort asc,id asc')->select();
          // return json($mains);
         $NewsaModel=Loader::model('Newsa');
         $NewsaResult=$NewsaModel->where([
                        'isdelete'=>0,
                        'status'=>1,
                        'id'=>$id
          ])->limit(1)->select(); 
         $arr2=i_array_column($NewsaResult,'num');
         $num=reset($arr2);
         $numResult=$NewsaModel->where([
                 'isdelete'=>0,
                 'status'=>1,
                 'id'=>$id
             ])->update(['num' => $num+1]);
         $arr3=i_array_column($NewsaResult,'visit');
         $visit=reset($arr3);
         $visitResult=$NewsaModel->where([
                 'isdelete'=>0,
                 'status'=>1,
                 'id'=>$id
             ])->update(['visit' => $visit+1]);
          $arr1=i_array_column($NewsaResult,'main');
          $mains=reset($arr1);  
          $prev=$NewsaModel->where([
              'isdelete'=>0,
              'status'=>1,
              'main'=>$mains,
              'id' => ['>',$id]
          ])->order('id','desc')->limit(1)->select();
          //下一页
          $next=$NewsaModel->where([
              'isdelete'=>0,
              'status'=>1,
              'main'=>$mains,
              'id' => ['<',$id]
              ])->order('id','asc')->limit(1)->select();
             // 18000
                return $this->view->fetch('',[
                  'NewsResult'=>$NewsResult,
                  'mains'=>$mains,
                  'NewsaResult'=>$NewsaResult,
                  'prev'=>$prev,
                  'next'=>$next,
                       ]);

    }
}
