<?php namespace Modules\Account\Http\Repositories;

use App\Repositories\Repository;
use Spatie\Permission\Models\Role;

class RoleRepository extends Repository
{
    protected $modeler = Role::class;

    /**
     * @param $id
     * @return mixed
     */
    public function getRolesByProgram($id)
    {
        return $this->modeler->where('program_id', $id)->where('parent_id', 0)->get();
    }

}
