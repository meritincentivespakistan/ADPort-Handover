<?php namespace Modules\Nomination\Transformers;

use League\Fractal\TransformerAbstract;
use Modules\Nomination\Models\NominationType;

class NominationTypeTransformer extends TransformerAbstract
{
    /**
     * @param NominationType $NominationType
     *
     * @return array
     */
    public function transform(NominationType $model): array
    {
        return [
            'id'                    => $model->id,
            'name'                  => $model->name,
            'description'           => $model->description,
            'logo'                  => $model->logo,
            'featured'              => $model->featured,
            'value_set'             => $model->value_set,
            'levels'                => $model->awards_level->count(),
        ];
    }

}
