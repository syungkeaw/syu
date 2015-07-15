<?php

namespace app\Models;

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
            [['title_id', 'title', 'original_title', 'mpaa_rating', 'release_date', 'tagline', 'plot', 'poster', 'runtime', 'oscars', 'awards', 'nominations'], 'safe'],
            [['year', 'votes'], 'integer'],
            [['rating'], 'number'],
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
            'year' => $this->year,
            'rating' => $this->rating,
            'release_date' => $this->release_date,
            'votes' => $this->votes,
        ]);

        $query->andFilterWhere(['like', 'title_id', $this->title_id])
            ->andFilterWhere(['like', 'title', $this->title])
            ->andFilterWhere(['like', 'original_title', $this->original_title])
            ->andFilterWhere(['like', 'mpaa_rating', $this->mpaa_rating])
            ->andFilterWhere(['like', 'tagline', $this->tagline])
            ->andFilterWhere(['like', 'plot', $this->plot])
            ->andFilterWhere(['like', 'poster', $this->poster])
            ->andFilterWhere(['like', 'runtime', $this->runtime])
            ->andFilterWhere(['like', 'oscars', $this->oscars])
            ->andFilterWhere(['like', 'awards', $this->awards])
            ->andFilterWhere(['like', 'nominations', $this->nominations]);

        return $dataProvider;
    }
}
