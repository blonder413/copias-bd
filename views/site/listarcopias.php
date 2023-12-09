<?php
/* @var $this yii\web\View */

use yii\helpers\Html;

$this->title = 'Listar Copias de Seguridad';
switch ($_GET['id']) {
    case 1:
        $this->title .= ' Blog';
        break;
    case 2:
        $this->title .= ' Gastos';
        break;
    default:
        break;
}

$this->params['breadcrumbs'][] = $this->title;
?>
<div class="site-about">
    <h2><?= Html::encode($this->title) ?></h3>

        <?php
        if ($handler = opendir($thefolder)) {
            while (false !== ($file = readdir($handler))) {
                if ($file != '.' and $file != '..') {
                    $id = base64_encode($thefolder);
                    $id2 = base64_encode($file);
                    echo Html::a($file, ["/site/descargar?id=$id&id2=$id2"], ['class' => 'btn btn-primary']) . "<br>";
                }
            }
        }
        ?>


</div>