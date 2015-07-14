<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Movie;

/**
 * MovieSearch represents the model behind the search form about `app\models\Movie`.
 */
class MovieSearch extends Movie
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['imdbID', 'Title', 'Year', 'Rated', 'Released', 'Runtime', 'Genre', 'Director', 'Writer', 'Actors', 'Plot', 'Language', 'Country', 'Awards', 'Poster', 'Metascore', 'Type', 'tomatoImage', 'tomatoConsensus', 'tomatoUserMeter', 'DVD', 'BoxOffice', 'Production', 'Website'], 'safe'],
            [['imdbRating', 'tomatoRating', 'tomatoUserRating'], 'number'],
            [['imdbVotes', 'tomatoMeter', 'tomatoReviews', 'tomatoFresh', 'tomatoRotten', 'tomatoUserReviews'], 'integer'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Movie::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        $query->andFilterWhere([
            'imdbRating' => $this->imdbRating,
            'imdbVotes' => $this->imdbVotes,
            'tomatoMeter' => $this->tomatoMeter,
            'tomatoRating' => $this->tomatoRating,
            'tomatoReviews' => $this->tomatoReviews,
            'tomatoFresh' => $this->tomatoFresh,
            'tomatoRotten' => $this->tomatoRotten,
            'tomatoUserRating' => $this->tomatoUserRating,
            'tomatoUserReviews' => $this->tomatoUserReviews,
        ]);

        $query->andFilterWhere(['like', 'imdbID', $this->imdbID])
            ->andFilterWhere(['like', 'Title', $this->Title])
            ->andFilterWhere(['like', 'Year', $this->Year])
            ->andFilterWhere(['like', 'Rated', $this->Rated])
            ->andFilterWhere(['like', 'Released', $this->Released])
            ->andFilterWhere(['like', 'Runtime', $this->Runtime])
            ->andFilterWhere(['like', 'Genre', $this->Genre])
            ->andFilterWhere(['like', 'Director', $this->Director])
            ->andFilterWhere(['like', 'Writer', $this->Writer])
            ->andFilterWhere(['like', 'Actors', $this->Actors])
            ->andFilterWhere(['like', 'Plot', $this->Plot])
            ->andFilterWhere(['like', 'Language', $this->Language])
            ->andFilterWhere(['like', 'Country', $this->Country])
            ->andFilterWhere(['like', 'Awards', $this->Awards])
            ->andFilterWhere(['like', 'Poster', $this->Poster])
            ->andFilterWhere(['like', 'Metascore', $this->Metascore])
            ->andFilterWhere(['like', 'Type', $this->Type])
            ->andFilterWhere(['like', 'tomatoImage', $this->tomatoImage])
            ->andFilterWhere(['like', 'tomatoConsensus', $this->tomatoConsensus])
            ->andFilterWhere(['like', 'tomatoUserMeter', $this->tomatoUserMeter])
            ->andFilterWhere(['like', 'DVD', $this->DVD])
            ->andFilterWhere(['like', 'BoxOffice', $this->BoxOffice])
            ->andFilterWhere(['like', 'Production', $this->Production])
            ->andFilterWhere(['like', 'Website', $this->Website]);

        return $dataProvider;
    }
}
