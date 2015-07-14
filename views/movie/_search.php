<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\MovieSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="movie-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'imdbID') ?>

    <?= $form->field($model, 'Title') ?>

    <?= $form->field($model, 'Year') ?>

    <?= $form->field($model, 'Rated') ?>

    <?= $form->field($model, 'Released') ?>

    <?php // echo $form->field($model, 'Runtime') ?>

    <?php // echo $form->field($model, 'Genre') ?>

    <?php // echo $form->field($model, 'Director') ?>

    <?php // echo $form->field($model, 'Writer') ?>

    <?php // echo $form->field($model, 'Actors') ?>

    <?php // echo $form->field($model, 'Plot') ?>

    <?php // echo $form->field($model, 'Language') ?>

    <?php // echo $form->field($model, 'Country') ?>

    <?php // echo $form->field($model, 'Awards') ?>

    <?php // echo $form->field($model, 'Poster') ?>

    <?php // echo $form->field($model, 'Metascore') ?>

    <?php // echo $form->field($model, 'imdbRating') ?>

    <?php // echo $form->field($model, 'imdbVotes') ?>

    <?php // echo $form->field($model, 'Type') ?>

    <?php // echo $form->field($model, 'tomatoMeter') ?>

    <?php // echo $form->field($model, 'tomatoImage') ?>

    <?php // echo $form->field($model, 'tomatoRating') ?>

    <?php // echo $form->field($model, 'tomatoReviews') ?>

    <?php // echo $form->field($model, 'tomatoFresh') ?>

    <?php // echo $form->field($model, 'tomatoRotten') ?>

    <?php // echo $form->field($model, 'tomatoConsensus') ?>

    <?php // echo $form->field($model, 'tomatoUserMeter') ?>

    <?php // echo $form->field($model, 'tomatoUserRating') ?>

    <?php // echo $form->field($model, 'tomatoUserReviews') ?>

    <?php // echo $form->field($model, 'DVD') ?>

    <?php // echo $form->field($model, 'BoxOffice') ?>

    <?php // echo $form->field($model, 'Production') ?>

    <?php // echo $form->field($model, 'Website') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
