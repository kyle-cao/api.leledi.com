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
namespace App\Service;

use App\Model\Subject;

class SubjectService extends AbstractService
{
    public function __construct()
    {
        parent::__construct(new Subject());
    }

    public function list(int $offset = 0, int $limit = 10): array
    {
        return parent::list($offset, $limit)->toArray();
    }

    public function first(): array
    {
        return parent::first()->toArray();
    }

    public function getModel(): Subject
    {
        return $this->model;
    }
}
