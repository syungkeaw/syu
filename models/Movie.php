<?php

namespace app\models;

use Yii;
use Yii\db\ActiveRecord;
use yii\behaviors\TimestampBehavior;
use yii\db\Expression;

/**
 * This is the model class for table "movie".
 *
 * @property string $title_id
 * @property string $title
 * @property string $original_title
 * @property integer $year
 * @property double $rating
 * @property string $mpaa_rating
 * @property string $release_date
 * @property string $tagline
 * @property string $plot
 * @property string $poster
 * @property string $runtime
 * @property string $oscars
 * @property string $awards
 * @property string $nominations
 * @property integer $votes
 * @property integer $updated_at
 * @property integer $created_at
 */
class Movie extends ActiveRecord
{

    public function behaviors()
    {
        return [
            'timestamp' => [
                'class' => TimestampBehavior::className(),
                'attributes' => [
                   ActiveRecord::EVENT_BEFORE_INSERT => ['created_at', 'updated_at'],
                   ActiveRecord::EVENT_BEFORE_UPDATE => ['updated_at'],
                ],
            ]
        ];
    }
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'movie';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['title_id', 'title', 'updated_at', 'created_at'], 'required'],
            [['year', 'votes', 'updated_at', 'created_at'], 'integer'],
            [['rating'], 'number'],
            [['release_date'], 'safe'],
            [['plot'], 'string'],
            [['title_id'], 'string', 'max' => 10],
            [['title'], 'string', 'max' => 150],
            [['original_title'], 'string', 'max' => 100],
            // [['mpaa_rating'], 'string', 'max' => 50],
            [['tagline', 'poster', 'runtime', 'oscars', 'awards', 'nominations'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'title_id' => Yii::t('app', 'Title ID'),
            'title' => Yii::t('app', 'Title'),
            'original_title' => Yii::t('app', 'Original Title'),
            'year' => Yii::t('app', 'Year'),
            'rating' => Yii::t('app', 'Rating'),
            'mpaa_rating' => Yii::t('app', 'Mpaa Rating'),
            'release_date' => Yii::t('app', 'Release Date'),
            'tagline' => Yii::t('app', 'Tagline'),
            'plot' => Yii::t('app', 'Plot'),
            'poster' => Yii::t('app', 'Poster'),
            'runtime' => Yii::t('app', 'Runtime'),
            'oscars' => Yii::t('app', 'Oscars'),
            'awards' => Yii::t('app', 'Awards'),
            'nominations' => Yii::t('app', 'Nominations'),
            'votes' => Yii::t('app', 'Votes'),
            'updated_at' => Yii::t('app', 'Updated At'),
            'created_at' => Yii::t('app', 'Created At'),
        ];
    }
}
