<?php

namespace app\models;

use Yii;

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
 */
class Movie extends \yii\db\ActiveRecord
{
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
            [['title_id', 'title'], 'required'],
            [['year', 'votes'], 'integer'],
            [['rating'], 'number'],
            [['release_date'], 'safe'],
            [['plot'], 'string'],
            [['title_id'], 'string', 'max' => 10],
            [['title'], 'string', 'max' => 150],
            [['original_title'], 'string', 'max' => 100],
            [['mpaa_rating'], 'string', 'max' => 50],
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
        ];
    }
}
