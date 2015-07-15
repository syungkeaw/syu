<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\Models\MovieSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app', 'Movies');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="movie-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a(Yii::t('app', 'Create Movie'), ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'title_id',
            'title',
            'original_title',
            'year',
            'rating',
            // 'mpaa_rating',
            // 'release_date',
            // 'tagline',
            // 'plot:ntext',
            // 'poster',
            // 'runtime',
            // 'oscars',
            // 'awards',
            // 'nominations',
            // 'votes',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

</div>
