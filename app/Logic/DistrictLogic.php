<?php

namespace App\Logic;

use App\Service\DistrictService;

class DistrictLogic
{
    public function create($param)
    {
        $materialService = new DistrictService();
        $materialService->pid = $param['pid'];
        $materialService->pid_path = $param['pid_path'];
        $materialService->code = $param['code'];
        $materialService->zip_code = $param['zip_code'];
        $materialService->name = $param['name'];
        $materialService->create();
        echo $param['name'].'-- inserted'.PHP_EOL;
        return $materialService->createId();
    }
}