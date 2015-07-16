<?php 
use yii\helpers\Html; 

?>
<div class="row">
	<div class="col-md-8">
		<?php foreach($model as $lv1){ ?>
			<?php foreach($lv1 as $lv2){ ?>
				<div class="list-group">
				 	<?= Html::a('
						<h4 class="list-group-item-heading">'.$lv2->title.'</h4>
				   	 	<p class="list-group-item-text">'.strip_tags($lv2->title_description).'</p>
				 	', ['index', 'id' => $lv2->id], ['class' => 'list-group-item']) ?>
				</div>	
			<?php } ?>
		<?php } ?>
	</div>
	<div class="col-md-4">
		
	</div>
</div>