<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "cast".
 *
 * @property string $cast_id
 * @property string $cast_name
 */
class Cast extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'cast';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['cast_id', 'cast_name'], 'required'],
            [['cast_id'], 'string', 'max' => 10],
            [['cast_name'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'cast_id' => Yii::t('app', 'Cast ID'),
            'cast_name' => Yii::t('app', 'Cast Name'),
        ];
    }
}
