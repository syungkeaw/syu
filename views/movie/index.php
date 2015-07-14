<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\MovieSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Movies';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="movie-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Movie', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'imdbID',
            'Title',
            'Year',
            'Rated',
            'Released',
            // 'Runtime',
            // 'Genre',
            // 'Director',
            // 'Writer',
            // 'Actors',
            // 'Plot:ntext',
            // 'Language',
            // 'Country',
            // 'Awards',
            // 'Poster',
            // 'Metascore',
            // 'imdbRating',
            // 'imdbVotes',
            // 'Type',
            // 'tomatoMeter',
            // 'tomatoImage',
            // 'tomatoRating',
            // 'tomatoReviews',
            // 'tomatoFresh',
            // 'tomatoRotten',
            // 'tomatoConsensus',
            // 'tomatoUserMeter',
            // 'tomatoUserRating',
            // 'tomatoUserReviews',
            // 'DVD',
            // 'BoxOffice',
            // 'Production',
            // 'Website',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

</div>
