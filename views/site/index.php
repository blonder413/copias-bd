<?php

use yii\helpers\Html;

/** @var yii\web\View $this */

$this->title = 'Sistema de Información de Copias de Seguridad';
?>
<div class="site-index">
    <div class="body-content">
        <div class="row">
            <div class="col-lg-4 text-center">
                <h3>Blog</h3>
                <p>
                    <?= Html::a('<i class="fa fa-university" aria-hidden="true"></i>Crear copia Blog', ['/site/blog'], [
                        'class' => 'btn btn-lg btn-success',
                        'target' => '_blank'
                    ]) ?>
                </p>
                <p>
                    <?= Html::a('<i class="fa fa-university" aria-hidden="true"></i>Listar copias Blog', ['/site/listar/1'], [
                        'class' => 'btn btn-lg btn-info',
                        'target' => '_blank'
                    ]);
                    ?>
                </p>
            </div>
        </div>

    </div>
</div>