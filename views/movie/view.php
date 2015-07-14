<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Movie */

$this->title = $model->Title;
$this->params['breadcrumbs'][] = ['label' => 'Movies', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="movie-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->imdbID], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->imdbID], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'imdbID',
            'Title',
            'Year',
            'Rated',
            'Released',
            'Runtime',
            'Genre',
            'Director',
            'Writer',
            'Actors',
            'Plot:ntext',
            'Language',
            'Country',
            'Awards',
            'Poster',
            'Metascore',
            'imdbRating',
            'imdbVotes',
            'Type',
            'tomatoMeter',
            'tomatoImage',
            'tomatoRating',
            'tomatoReviews',
            'tomatoFresh',
            'tomatoRotten',
            'tomatoConsensus',
            'tomatoUserMeter',
            'tomatoUserRating',
            'tomatoUserReviews',
            'DVD',
            'BoxOffice',
            'Production',
            'Website',
        ],
    ]) ?>

</div>
