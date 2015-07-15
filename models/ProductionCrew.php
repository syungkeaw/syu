<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "production_crew".
 *
 * @property string $crew_id
 * @property string $crew_name
 */
class ProductionCrew extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'production_crew';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['crew_id'], 'required'],
            [['crew_id'], 'string', 'max' => 10],
            [['crew_name'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'crew_id' => Yii::t('app', 'Crew ID'),
            'crew_name' => Yii::t('app', 'Crew Name'),
        ];
    }
}
