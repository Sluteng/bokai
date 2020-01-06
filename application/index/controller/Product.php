<?php
namespace app\index\controller;

use think\Controller;
use think\Loader;

class Product extends Controller
{
    public function product()
    {
         require_once('Base.php');   
         $manResult=$navberModel->where([
                        'isdelete'=>0,
                        'status'=>1,
                        'id'=>2
          ])->limit(1)->select();
         $mainModel=Loader::model('Main');
         $mainResult=$mainModel->where([
                        'isdelete'=>0,
                        'status'=>1
          ])->order('sort=0 asc,sort asc,id asc')->select();
          $mains=null;
          // return json($manResult);
          $productModel=Loader::model('Product');
          $productResult=$productModel->where([
                  'isdelete'=>0,
                  'status'=>1
              ])->order('sort=0 asc,sort asc,id desc')
                ->paginate(8,false,['path'=>'/productp/[PAGE].html',
                                    'page' => input('param.p'),
                                       ]);
          $page = $productResult->render();      
           // return json("aaa"); 
                return $this->view->fetch('',[
                  'manResult'=>$manResult,
                  'mainResult'=>$mainResult,
                  'mains'=>$mains,
                  'productResult'=>$productResult,
                  'page'=>$page,
                       ]);
    }
    public function product1($id)
    {
         require_once('Base.php');   
         $mainModel=Loader::model('Main');
         $mainResult=$mainModel->where([
                        'isdelete'=>0,
                        'status'=>1
          ])->order('sort=0 asc,sort asc,id asc')->select();
         $manResult=$mainModel->where([
                        'isdelete'=>0,
                        'status'=>1,
                        'id'=>$id
          ])->limit(1)->select();
          $arr1=i_array_column($manResult,'name');
          $mains=reset($arr1);
          // return json($manResult);
          $productModel=Loader::model('Product');
          $productResult=$productModel->where([
                  'isdelete'=>0,
                  'status'=>1,
                  'main'=>$mains
              ])->order('sort=0 asc,sort asc,id desc')
                ->paginate(8,false,['path'=>'/productp1/'.$id.'/[PAGE].html',
                                    'page' => input('param.p'),
                                       ]);
          $page = $productResult->render();      
           // return json("aaa"); 
           return $this->view->fetch('product',[
             'manResult'=>$manResult,
             'mainResult'=>$mainResult,
             'mains'=>$mains,
             'productResult'=>$productResult,
             'page'=>$page,
                  ]);

    }
    public function whole($id)
    {
         require_once('Base.php');
         // return json($id);   
         $mainModel=Loader::model('Main');
         $mainResult=$mainModel->where([
                        'isdelete'=>0,
                        'status'=>1
          ])->order('sort=0 asc,sort asc,id asc')->select();
     
          $productModel=Loader::model('Product');
          $productResult=$productModel->where([
                  'isdelete'=>0,
                  'status'=>1,
                  'id'=>$id
              ])->limit(1)->select();
           $mains=null;
         // return json($productResult);
          $homeResult=$productModel->where([
                  'isdelete'=>0,
                  'status'=>1,
                  'home'=>1
              ])->order('sort=0 asc,sort asc,id desc')->limit(4)->select();
          //上一页
          $prev=$productModel->where([
                  'isdelete'=>0,
                  'status'=>1,
                  'id' => ['<',$id]
              ])->order('id','desc')->limit(1)->select();
          // return json($prev);
          //下一页
          $next=$productModel->where([
              'isdelete'=>0,
              'status'=>1,
              'id' => ['>',$id]
              ])->order('id','asc')->limit(1)->select();
          return $this->view->fetch('product2',[
                  'mainResult'=>$mainResult,
                  'mains'=>$mains,
                  'productResult'=>$productResult,
                  'homeResult'=>$homeResult,
                  'prev'=>$prev,
                  'next'=>$next,
                       ]);

    }
    public function product2($id)
    {
         require_once('Base.php');
         // return json($id);   
         $mainModel=Loader::model('Main');
         $mainResult=$mainModel->where([
                        'isdelete'=>0,
                        'status'=>1
          ])->order('sort=0 asc,sort asc,id asc')->select();
     
          $productModel=Loader::model('Product');
          $productResult=$productModel->where([
                  'isdelete'=>0,
                  'status'=>1,
                  'id'=>$id
              ])->limit(1)->select();
           $arr1=i_array_column($productResult,'main');
           $mains=reset($arr1);
         // return json($productResult);
          $homeResult=$productModel->where([
                  'isdelete'=>0,
                  'status'=>1,
                  'home'=>1
              ])->order('sort=0 asc,sort asc,id desc')->limit(4)->select();
          //上一页
          $prev=$productModel->where([
                  'isdelete'=>0,
                  'status'=>1,
                  'main'=>$mains,
                  'id' => ['<',$id]
              ])->order('id','desc')->limit(1)->select();
          // return json($prev);
          //下一页
          $next=$productModel->where([
              'isdelete'=>0,
              'status'=>1,
              'main'=>$mains,
              'id' => ['>',$id]
              ])->order('id','asc')->limit(1)->select();
          return $this->view->fetch('',[
                  'mainResult'=>$mainResult,
                  'mains'=>$mains,
                  'productResult'=>$productResult,
                  'homeResult'=>$homeResult,
                  'prev'=>$prev,
                  'next'=>$next,
                       ]);

    }
}
