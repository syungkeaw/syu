<header>
	<h2>generating....</h2>
</header>


<?php
$this->registerJsFile(
	\Yii::$app->request->BaseUrl.'/js/generating.js', 
	[
		'position' => $this::POS_END,
		'depends' => [\yii\web\JqueryAsset::className()]
	] 
);