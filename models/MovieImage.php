<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "movie_image".
 *
 * @property integer $img_id
 * @property string $title_id
 * @property string $img_url
 */
class MovieImage extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'movie_image';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['title_id', 'img_url'], 'required'],
            [['title_id', 'img_url'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'img_id' => Yii::t('app', 'Img ID'),
            'title_id' => Yii::t('app', 'Title ID'),
            'img_url' => Yii::t('app', 'Img Url'),
        ];
    }
}
