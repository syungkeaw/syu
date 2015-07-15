<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "genre".
 *
 * @property integer $genre_id
 * @property string $genre_label
 */
class Genre extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'genre';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['genre_label'], 'required'],
            [['genre_label'], 'string', 'max' => 100],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'genre_id' => Yii::t('app', 'Genre ID'),
            'genre_label' => Yii::t('app', 'Genre Label'),
        ];
    }
}
