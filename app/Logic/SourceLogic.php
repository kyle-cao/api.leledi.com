<?php

namespace App\Logic;

use App\Service\SourceService;

class SourceLogic
{
    public function create($name)
    {
        $materialService = new SourceService();
        $materialService->name = $name;
        $materialService->uuid = createUUID();
        $materialService->create();
    }
}