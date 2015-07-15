<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "movie_clip".
 *
 * @property integer $clip_id
 * @property integer $title_id
 * @property string $clip_url
 */
class MovieClip extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'movie_clip';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['title_id', 'clip_url'], 'required'],
            [['title_id'], 'integer'],
            [['clip_url'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'clip_id' => Yii::t('app', 'Clip ID'),
            'title_id' => Yii::t('app', 'Title ID'),
            'clip_url' => Yii::t('app', 'Clip Url'),
        ];
    }
}
