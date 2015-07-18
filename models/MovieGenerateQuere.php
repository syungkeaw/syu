<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "movie_generate_quere".
 *
 * @property string $title_id
 */
class MovieGenerateQuere extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'movie_generate_quere';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['title_id'], 'required'],
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
        ];
    }
}
