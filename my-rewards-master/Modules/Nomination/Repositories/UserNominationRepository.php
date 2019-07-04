<?php namespace Modules\Nomination\Repositories;

use App\Repositories\Repository;
use Modules\Nomination\Models\UserNomination;

class UserNominationRepository extends Repository
{
    protected $modeler = UserNomination::class;

    public function filter($data , $pagination_count)
    {
        $query = (new $this->modeler)->query();


        if (isset($data['keyword'])) {
            $query->where('name', 'like' ,  '%' . $data['keyword'] . '%');
        }

        return $query->paginate($pagination_count);
    }

    public function getDesc(array $columns = [ '*' ])
    {
        return $this->modeler->orderBy('id','desc')->get($columns);
    }
}
