<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\Models\MovieSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="movie-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'title_id') ?>

    <?= $form->field($model, 'title') ?>

    <?= $form->field($model, 'original_title') ?>

    <?= $form->field($model, 'year') ?>

    <?= $form->field($model, 'rating') ?>

    <?php // echo $form->field($model, 'mpaa_rating') ?>

    <?php // echo $form->field($model, 'release_date') ?>

    <?php // echo $form->field($model, 'tagline') ?>

    <?php // echo $form->field($model, 'plot') ?>

    <?php // echo $form->field($model, 'poster') ?>

    <?php // echo $form->field($model, 'runtime') ?>

    <?php // echo $form->field($model, 'oscars') ?>

    <?php // echo $form->field($model, 'awards') ?>

    <?php // echo $form->field($model, 'nominations') ?>

    <?php // echo $form->field($model, 'votes') ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'Search'), ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton(Yii::t('app', 'Reset'), ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
