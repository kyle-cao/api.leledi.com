<?php

declare(strict_types=1);
/**
 * This file is part of Hyperf.
 *
 * @link     https://www.hyperf.io
 * @document https://hyperf.wiki
 * @contact  group@hyperf.io
 * @license  https://github.com/hyperf/hyperf/blob/master/LICENSE
 */
namespace App\Controller;

use App\Logic\MaterialLogic;
use Hyperf\HttpServer\Contract\RequestInterface;

class IndexController extends AbstractController
{
    public function index(RequestInterface $request)
    {
        $arr = ['人教版', '苏教版', '冀教版', '北师版', '西师版', '沪教版', '鲁教版', '粤教版', '浙教版'];
        foreach($arr as $name){
            $subjectLogic = new MaterialLogic();
            $subjectLogic->create($name);
        }
    }
}
