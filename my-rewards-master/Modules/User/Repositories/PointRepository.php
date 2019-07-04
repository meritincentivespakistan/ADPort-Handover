<?php namespace Modules\User\Http\Repositories;

use App\Repositories\Repository;
use Modules\User\Models\UsersPoint;

class PointRepository extends Repository
{
    protected $modeler = UsersPoint::class;

    /**
     * @param $user_id
     * @param $data
     *
     * @return mixed
     */
    public function updateOrCreate($user_id, $data)
    {
        return $this->modeler->updateOrCreate([ 'user_id' => $user_id ], $data);
    }

    /**
     * @param $user_id
     *
     * @return mixed
     */
    public function aggregateBalance($user_id)
    {
        return $this->modeler->where('user_id', $user_id)->sum('value');
    }

    /**
     * @param $user_id
     *
     * @return mixed
     */
    public function aggregateUserBalance($user_id)
    {
        return $this->modeler->where('user_id', $user_id)->sum('value');
    }

    public function filter($data, $pagination_count)
    {
        $query = (new $this->modeler)->query();

        if (isset($data['transaction_type_id'])) {
            $query->where('transaction_type_id', $data['transaction_type_id']);
        }

        if (isset($data['from_date'])) {
            $query->whereDate('from', '<=', $data['from_date']);
        }

        if (isset($data['to_date'])) {
            $query->whereDate('from', '>=', $data['to_date']);
        }

        return $query->get();

    }
}
