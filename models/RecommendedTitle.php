<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "recommended_title".
 *
 * @property string $title_id
 * @property string $req_title_id
 */
class RecommendedTitle extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'recommended_title';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['title_id', 'req_title_id'], 'required'],
            [['title_id', 'req_title_id'], 'string', 'max' => 10],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'title_id' => Yii::t('app', 'Title ID'),
            'req_title_id' => Yii::t('app', 'Req Title ID'),
        ];
    }
}
