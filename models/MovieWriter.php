<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "movie_writer".
 *
 * @property string $title_id
 * @property string $crew_id
 */
class MovieWriter extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'movie_writer';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['title_id', 'crew_id'], 'required'],
            [['title_id', 'crew_id'], 'string', 'max' => 10],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'title_id' => Yii::t('app', 'Title ID'),
            'crew_id' => Yii::t('app', 'Crew ID'),
        ];
    }
}
