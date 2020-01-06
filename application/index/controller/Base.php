<?php
use think\Loader;
use think\Request;
 
          $navberModel=Loader::model('Navber');
          $navberResult=$navberModel->where([
                         'isdelete'=>0,
                         'status'=>1
           ])->order('sort=0 asc,sort asc,id asc')->select();
           $cont=request()->controller();//获取控制器名称
           $foo=lcfirst($cont);  //首字母变小写
           $tdkResult=$navberModel->where([
                          'isdelete'=>0,
                          'status'=>1,
                          'id'=>1
            ])->limit(1)->select();
           $bannerModel=Loader::model('Banner');
           $bannerResult=$bannerModel->where([
                          'isdelete'=>0,
                          'status'=>1
            ])->order('sort=0 asc,sort asc,id asc')->select(); 

           //导航二级栏目
           $mainModel=Loader::model('Main');
           $mainpResult=$mainModel->where([
                          'isdelete'=>0,
                          'status'=>1
            ])->order('sort=0 asc,sort asc,id asc')->select(); 
           $maineModel=Loader::model('Maincase');
           $maineResult=$maineModel->where([
                          'isdelete'=>0,
                          'status'=>1
            ])->order('sort=0 asc,sort asc,id asc')->select(); 
           $NewsModel=Loader::model('News');
           $newsnResult=$NewsModel->where([
                          'isdelete'=>0,
                          'status'=>1
            ])->order('sort=0 asc,sort asc,id asc')->select(); 
           $combModel=Loader::model('JianjieCompany');
           $combResult=$combModel->where([
                          'isdelete'=>0,
                          'status'=>1
            ])->limit(1)->select(); 
           $culbModel=Loader::model('WenhuaCulture');
           $culbResult=$culbModel->where([
                          'isdelete'=>0,
                          'status'=>1
            ])->limit(1)->select(); 
           $honbModel=Loader::model('ZizhiHonor');
           $honbResult=$honbModel->where([
                          'isdelete'=>0,
                          'status'=>1
            ])->limit(1)->select();
           //基本信息
           $setModel=Loader::model('Set');
           $setResult=$setModel->where([
                          'isdelete'=>0,
                          'status'=>1
            ])->limit(1)->select();
           $contactModel=Loader::model('Contact');
           $contactResult=$contactModel->where([
                          'isdelete'=>0,
                          'status'=>1
            ])->limit(1)->select(); 
           $linksModel=Loader::model('Links');
           $linksResult=$linksModel->where([
                          'isdelete'=>0,
                          'status'=>1
            ])->order('sort=0 asc,sort asc,id asc')->select(); 
           $copyModel=Loader::model('Copy');
           $copyResult=$copyModel->where([
                          'isdelete'=>0,
                          'status'=>1
            ])->limit(1)->select();        
         // return json("aaa"); 
                $this->assign([
                  'tdkResult'=>$tdkResult,
                  'navberResult'=>$navberResult,
                  'foo'=>$foo,
                  'bannerResult'=>$bannerResult,
                  'mainpResult'=>$mainpResult,
                  'maineResult'=>$maineResult,
                  'newsnResult'=>$newsnResult,
                  'combResult'=>$combResult,
                  'culbResult'=>$culbResult,
                  'honbResult'=>$honbResult,
                  'setResult'=>$setResult,
                  'contactResult'=>$contactResult,
                  'linksResult'=>$linksResult,
                  'copyResult'=>$copyResult,
                  
                       ]);