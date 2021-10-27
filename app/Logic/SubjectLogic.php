<?php

namespace App\Logic;

use App\Service\SubjectService;

class SubjectLogic
{
    public function create($name)
    {
        $subjectService = new SubjectService();
        $subjectService->name = $name;
        $subjectService->uuid = createUUID();
        $subjectService->create();
    }
}