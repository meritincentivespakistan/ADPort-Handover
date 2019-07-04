<?php namespace Modules\User\Exports;


use Modules\User\Models\ProgramUsers;
use Maatwebsite\Excel\Concerns\FromCollection;

/**
 * Class UsersExport
 * @package Modules\User\Exports
 */
class UserExport implements FromCollection
{
    /**
     * @return \Illuminate\Database\Eloquent\Collection|\Illuminate\Support\Collection|ProgramUsers[]
     */
    public function collection()
    {
        return ProgramUsers::all();
    }
}
