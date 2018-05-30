<?php

require_once __DIR__.'/controllers/viewItem.php';
require_once __DIR__.'/controllers/pagination.php';
require_once __DIR__. '/controllers/sorting.php';

if($_GET['page']){
    $currentPage = $_GET['page'];
}else{
    $currentPage = 1;
}
if($_GET['id']){
    $id = $_GET['id'];
    $oneItem = new ViewItem();
}

//var_dump(parse_url($_SERVER['REQUEST_URI'], PHP_URL_QUERY));
//echo $_SERVER['REQUEST_URI'];

$sort = new SortCategory();
//$pagination = new Pagination();
 $sort->getItemsForCategory();
?>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
</head>
<body>
<div class="container-fuild">
    <div class="row">
        <div class="col">
            <nav class="navbar navbar-light bg-light">
                <a href="index.php" class="navbar-brand">LOGO</a>
                <ul class="nav justify-content-center">
                    <li class="nav-item">
                        <a class="nav-link active" href="<?=$_SERVER['REQUEST_URI'];
                        if(parse_url($_SERVER['REQUEST_URI'], PHP_URL_QUERY)){
                            echo "&type=1";
                        }else{
                            echo "?type=1";
                        }
                        ?>">Active</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Link</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Link</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" href="#">Disabled</a>
                    </li>
                </ul>
                <form class="form-inline">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                </form>
            </nav>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-2">
            <p><b>Sort by:</b></p>
            <ul class="sort">
                <? $sort->sorting() ?>
            </ul>

        </div>
        <div class="col-10">
            <div class="row content-item">
                 <? if($_GET['id']){$oneItem->getItem();
                 }else{$pagination->buildItemsOnPage($currentPage);} ?>
            </div>
            <div class="row pagination">
                <div class="col">
                    <nav aria-label="...">
                        <ul class="pagination pagination-md">
                            <? if(!$_GET['id']) $pagination->buildPagination();?>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>

</div>





<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
<script src="main.js"></script>
</body>
</html>
