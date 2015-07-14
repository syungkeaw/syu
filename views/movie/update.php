<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Movie */

$this->title = 'Update Movie: ' . ' ' . $model->Title;
$this->params['breadcrumbs'][] = ['label' => 'Movies', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->Title, 'url' => ['view', 'id' => $model->imdbID]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="movie-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
