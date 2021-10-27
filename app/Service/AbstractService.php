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

use Hyperf\DbConnection\Model\Model;

abstract class AbstractService
{
    /**
     * @var Model
     */
    protected $model;

    public function __construct(Model $model)
    {
        $this->model = $model;
    }

    public function __set(string $name, $value): void
    {
        $this->model->{$name} = $value;
    }

    public function list(int $offset, int $limit)
    {
        return $this->model->offset($offset)->limit($limit)->get();
    }

    public function first()
    {
        return $this->model->first();
    }

    public function create(): bool
    {
        return $this->model->save();
    }

    public function createId(): int
    {
        return $this->model->id;
    }

    public function update(): bool
    {
        return $this->model->save();
    }

    public function delete()
    {
        return $this->model->delete();
    }

    public function select(array $select): void
    {
        $this->model = $this->model->select($select);
    }

    public function where(string $column, string $operator, $value): void
    {
        $this->model = $this->model->where($column, $operator, $value);
    }

    public function order(string $column, string $direction): void
    {
        $this->model = $this->model->orderBy($column, $direction);
    }
}
