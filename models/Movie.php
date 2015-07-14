<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "movie".
 *
 * @property string $imdbID
 * @property string $Title
 * @property string $Year
 * @property string $Rated
 * @property string $Released
 * @property string $Runtime
 * @property string $Genre
 * @property string $Director
 * @property string $Writer
 * @property string $Actors
 * @property string $Plot
 * @property string $Language
 * @property string $Country
 * @property string $Awards
 * @property string $Poster
 * @property string $Metascore
 * @property double $imdbRating
 * @property integer $imdbVotes
 * @property string $Type
 * @property integer $tomatoMeter
 * @property string $tomatoImage
 * @property double $tomatoRating
 * @property integer $tomatoReviews
 * @property integer $tomatoFresh
 * @property integer $tomatoRotten
 * @property string $tomatoConsensus
 * @property string $tomatoUserMeter
 * @property double $tomatoUserRating
 * @property integer $tomatoUserReviews
 * @property string $DVD
 * @property string $BoxOffice
 * @property string $Production
 * @property string $Website
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
            [['imdbID', 'Title'], 'required'],
            [['Plot'], 'string'],
            [['imdbRating', 'tomatoRating', 'tomatoUserRating'], 'number'],
            [['imdbVotes', 'tomatoMeter', 'tomatoReviews', 'tomatoFresh', 'tomatoRotten', 'tomatoUserReviews'], 'integer'],
            [['imdbID'], 'string', 'max' => 9],
            [['Title', 'Writer', 'Actors', 'Language', 'Country', 'Awards', 'Poster', 'Metascore', 'Type', 'tomatoImage', 'tomatoConsensus', 'tomatoUserMeter', 'DVD', 'BoxOffice', 'Production', 'Website'], 'string', 'max' => 255],
            [['Year'], 'string', 'max' => 4],
            [['Rated', 'Genre', 'Director'], 'string', 'max' => 100],
            [['Released', 'Runtime'], 'string', 'max' => 50],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'imdbID' => 'Imdb ID',
            'Title' => 'Title',
            'Year' => 'Year',
            'Rated' => 'Rated',
            'Released' => 'Released',
            'Runtime' => 'Runtime',
            'Genre' => 'Genre',
            'Director' => 'Director',
            'Writer' => 'Writer',
            'Actors' => 'Actors',
            'Plot' => 'Plot',
            'Language' => 'Language',
            'Country' => 'Country',
            'Awards' => 'Awards',
            'Poster' => 'Poster',
            'Metascore' => 'Metascore',
            'imdbRating' => 'Imdb Rating',
            'imdbVotes' => 'Imdb Votes',
            'Type' => 'Type',
            'tomatoMeter' => 'Tomato Meter',
            'tomatoImage' => 'Tomato Image',
            'tomatoRating' => 'Tomato Rating',
            'tomatoReviews' => 'Tomato Reviews',
            'tomatoFresh' => 'Tomato Fresh',
            'tomatoRotten' => 'Tomato Rotten',
            'tomatoConsensus' => 'Tomato Consensus',
            'tomatoUserMeter' => 'Tomato User Meter',
            'tomatoUserRating' => 'Tomato User Rating',
            'tomatoUserReviews' => 'Tomato User Reviews',
            'DVD' => 'Dvd',
            'BoxOffice' => 'Box Office',
            'Production' => 'Production',
            'Website' => 'Website',
        ];
    }

    public static function primaryKey()
    {
        return ['imdbID'];
    }    
}
