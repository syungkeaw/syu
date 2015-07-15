<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "movie_genre".
 *
 * @property string $title_id
 * @property integer $genre_id
 */
class MovieGenre extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'movie_genre';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['title_id', 'genre_id'], 'required'],
            [['genre_id'], 'integer'],
            [['title_id'], 'string', 'max' => 10],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'title_id' => Yii::t('app', 'Title ID'),
            'genre_id' => Yii::t('app', 'Genre ID'),
        ];
    }
}
