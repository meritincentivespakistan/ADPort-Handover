<?php namespace Modules\Account\Transformers;

use Spatie\Permission\Models\Role;
use League\Fractal\TransformerAbstract;

class RoleTransformer extends TransformerAbstract
{
    /**
     * @param Role $role
     * @return array
     */
    public function transform(Role $role): array
    {
        return [
            'id'   =>  $role->id,
            'name' => $role->name,
            'program_id' => $role->program_id,
            'children' => Role::where('parent_id', $role->id)->get(),
            'is_default' => $role->is_default,
            'permissions' => $role->permissions,
            'permissions_count' => $role->permissions()->count(),
            'users_cont' => $role->users()->count()
        ];
    }
}
