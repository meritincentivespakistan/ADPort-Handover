<?php namespace Modules\User\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ProgramUsersRequest extends FormRequest
{
    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules(): array
    {
        return [
            'email' => 'required|email|unique:program_users,email',
            'username' => 'required|unique:program_users,username',
            'role_id' => 'sometimes|exists:roles,id',
            'password' => 'required'
        ];
    }

    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize(): bool
    {
        return TRUE;
    }
}
