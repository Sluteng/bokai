<?php
namespace app\index\controller;

use think\Controller;
use think\Loader;

class Company extends Controller
{
    public function company()
    {
         require_once('Base.php');  
         $tdkjResult=$navberModel->where([
                        'isdelete'=>0,
                        'status'=>1,
                        'id'=>5
          ])->limit(1)->select();  
         $cultureModel=Loader::model('WenhuaCulture');
         $cultureResult=$cultureModel->where([
                        'isdelete'=>0,
                        'status'=>1
          ])->limit(1)->select(); 
         $honorModel=Loader::model('ZizhiHonor');
         $honorResult=$honorModel->where([
                        'isdelete'=>0,
                        'status'=>1
          ])->limit(1)->select();
         $companyModel=Loader::model('JianjieCompany');
         $companyResult=$companyModel->where([
                        'isdelete'=>0,
                        'status'=>1
          ])->order('sort=0 asc,sort asc,id asc')->select(); 
                return $this->view->fetch('',[
                  'tdkjResult'=>$tdkjResult,
                  'companyResult'=>$companyResult,
                  'cultureResult'=>$cultureResult,
                  'honorResult'=>$honorResult,
                       ]);

    }
    public function culture()
    {
         require_once('Base.php');  
         $tdkwModel=Loader::model('wenhuaTdkw');
         $tdkwResult=$tdkwModel->where([
                        'isdelete'=>0,
                        'status'=>1
          ])->limit(1)->select(); 
         $companyModel=Loader::model('JianjieCompany');
         $companyResult=$companyModel->where([
                        'isdelete'=>0,
                        'status'=>1
          ])->limit(1)->select(); 
         $cultureModel=Loader::model('WenhuaCulture');
         $cultureResult=$cultureModel->where([
                        'isdelete'=>0,
                        'status'=>1
          ])->limit(1)->select(); 
         $honorModel=Loader::model('ZizhiHonor');
         $honorResult=$honorModel->where([
                        'isdelete'=>0,
                        'status'=>1
          ])->limit(1)->select();
         $coreModel=Loader::model('WenhuaCore');
         $coreResult=$coreModel->where([
                        'isdelete'=>0,
                        'status'=>1
          ])->limit(3)->select(); 
         $valueModel=Loader::model('WenhuaValue');
         $valueResult=$valueModel->where([
                        'isdelete'=>0,
                        'status'=>1
          ])->limit(4)->select(); 
         // return json($valueResult);
                return $this->view->fetch('',[
                  'tdkwResult'=>$tdkwResult,
                  'companyResult'=>$companyResult,
                  'cultureResult'=>$cultureResult,
                  'honorResult'=>$honorResult,
                  'coreResult'=>$coreResult,
                  'valueResult'=>$valueResult,
                       ]);

    }
    public function honor()
    {
         require_once('Base.php');  
         $tdkzModel=Loader::model('ZizhiTdkz');
         $tdkzResult=$tdkzModel->where([
                        'isdelete'=>0,
                        'status'=>1
          ])->limit(1)->select();  
         $companyModel=Loader::model('JianjieCompany');
         $companyResult=$companyModel->where([
                        'isdelete'=>0,
                        'status'=>1
          ])->limit(1)->select(); 
         $cultureModel=Loader::model('WenhuaCulture');
         $cultureResult=$cultureModel->where([
                        'isdelete'=>0,
                        'status'=>1
          ])->limit(1)->select(); 
         $honorModel=Loader::model('ZizhiHonor');
         $honorResult=$honorModel->where([
                        'isdelete'=>0,
                        'status'=>1
          ])->order('sort=0 asc,sort asc,id asc')
            ->paginate(6,false,['path'=>'/honor1/[PAGE].html',
                                'page' => input('param.p'),
                                     ]);
          $page = $honorResult->render(); 
                return $this->view->fetch('',[
                  'tdkzResult'=>$tdkzResult,
                  'companyResult'=>$companyResult,
                  'cultureResult'=>$cultureResult,
                  'honorResult'=>$honorResult,
                  'page'=>$page,
                       ]);

    }
}
