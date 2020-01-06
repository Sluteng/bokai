<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006~2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------

use Think\Route;
//前端
Route::get('index','index/Index/index');
Route::get('product','index/Product/product');
Route::get('productp/:p','index/Product/product');
Route::get('product1/:id','index/Product/product1');
Route::get('productp1/:id/:p','index/Product/product1');
Route::get('product2/:id','index/Product/product2');
Route::get('whole/:id','index/Product/whole');
Route::get('cases','index/Cases/cases');
Route::get('casesp/:p','index/Cases/cases');
Route::get('case1/:id','index/Cases/case1');
Route::get('case1p/:id/:p','index/Cases/case1');
Route::get('casea/:id','index/Cases/casea');
Route::get('casew/:id','index/Cases/casew');
Route::get('news','index/News/news');
Route::get('newsp/:p','index/News/news');
Route::get('news1/:id','index/News/news1');
Route::get('news1p/:id/:p','index/News/news1');
Route::get('newsa/:id','index/News/newsa');
Route::get('company','index/Company/company');
Route::get('culture','index/Company/culture');
Route::get('honor', 'index/Company/honor'); //关于博楷子页
Route::get('honor1/:p', 'index/Company/honor'); //关于博楷子页
Route::get('contact','index/Contact/contact');
Route::get('center','index/Center/center');
Route::post('centers','index/Center/center');
Route::get('infor','index/Infor/infor');
return [
    '__pattern__' => [
        'name' => '\w+',
    ],
    '[hello]'     => [
        ':id'   => ['index/hello', ['method' => 'get'], ['id' => '\d+']],
        ':name' => ['index/hello', ['method' => 'post']],
    ],

];
