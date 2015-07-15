<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "movie_cast".
 *
 * @property string $title_id
 * @property string $cast_id
 */
class MovieCast extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'movie_cast';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['title_id', 'cast_id'], 'required'],
            [['title_id', 'cast_id'], 'string', 'max' => 10],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'title_id' => Yii::t('app', 'Title ID'),
            'cast_id' => Yii::t('app', 'Cast ID'),
        ];
    }
}
