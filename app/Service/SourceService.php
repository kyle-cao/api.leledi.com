<?php

namespace App\Service;

use App\Model\Source;

class SourceService extends AbstractService
{
    public function __construct()
    {
        parent::__construct(new Source());
    }

    public function list(int $offset = 0, int $limit = 10): array
    {
        return parent::list($offset, $limit)->toArray();
    }

    public function first(): array
    {
        return parent::first()->toArray();
    }

    public function getModel(): Source
    {
        return $this->model;
    }
}