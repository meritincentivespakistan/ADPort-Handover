<?php namespace Modules\Nomination\Transformers;

use League\Fractal\TransformerAbstract;
use Modules\Nomination\Models\ValueSet;

class ValueSetTransformer extends TransformerAbstract
{
    /**
     * @param ValueSet $ValueSet
     *
     * @return array
     */
    public function transform(ValueSet $model): array
    {
        return [
            'id'                    => $model->id,
            'name'                  => $model->name,
            'description'           => $model->description,
            'values'                => $model->types->count()

        ];
    }

}
