<?php
namespace app\index\controller;

use think\Controller;
use think\Loader;

class Center extends Controller
{
    public function center()
    {
         require_once('Base.php');   
         $cenResult=$navberModel->where([
                        'isdelete'=>0,
                        'status'=>1,
                        'id'=>7
          ])->limit(1)->select(); 
        if (request()->isPost()){
           $data = input('post.');
           $validate = validate('Center');
           if (!$validate->batch()->check($data)) {
             $error = $validate->getError();
             $this->error(implode(',',$error));
           }
           $center = model('Center');
           $center->data($data,true);
           $result = $center->allowField(true)->save();
           // return json($result);
           if ($result) {
            echo "<script>alert('提交成功!');location.href='/center.html';</script>";
           } else {
            echo "<script>alert('提交失败!');location.href='/center.html';</script>";
           }
          }
                return $this->view->fetch('',[
                  'cenResult'=>$cenResult,
                       ]);

    }
}
