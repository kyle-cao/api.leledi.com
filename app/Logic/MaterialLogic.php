<?php

namespace App\Logic;

use App\Service\MaterialService;

class MaterialLogic
{
    public function create($name)
    {
        $materialService = new MaterialService();
        $materialService->name = $name;
        $materialService->uuid = createUUID();
        $materialService->create();
    }
}