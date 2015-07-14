<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Movie */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="movie-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'imdbID')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'Title')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'Year')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'Rated')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'Released')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'Runtime')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'Genre')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'Director')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'Writer')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'Actors')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'Plot')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'Language')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'Country')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'Awards')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'Poster')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'Metascore')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'imdbRating')->textInput() ?>

    <?= $form->field($model, 'imdbVotes')->textInput() ?>

    <?= $form->field($model, 'Type')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'tomatoMeter')->textInput() ?>

    <?= $form->field($model, 'tomatoImage')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'tomatoRating')->textInput() ?>

    <?= $form->field($model, 'tomatoReviews')->textInput() ?>

    <?= $form->field($model, 'tomatoFresh')->textInput() ?>

    <?= $form->field($model, 'tomatoRotten')->textInput() ?>

    <?= $form->field($model, 'tomatoConsensus')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'tomatoUserMeter')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'tomatoUserRating')->textInput() ?>

    <?= $form->field($model, 'tomatoUserReviews')->textInput() ?>

    <?= $form->field($model, 'DVD')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'BoxOffice')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'Production')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'Website')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
