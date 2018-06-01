<?php

//require_once __DIR__.'\..\models\db.php';
require_once __DIR__ . '\SortCategory.php';

class Pagination extends SortCategory{

    protected $maxItemsOnPage = 3; // Количество товара на одной странице.
    protected $itemCount ; // Общее количество товара в базе.
    protected $pagesCount ; // Общее число станиц которое нужно для товара.


    public function getPagesCount (){
        $pdo = $this->getPDO();
        $result = $pdo->prepare("SELECT COUNT(*) as count FROM product");
        $result->execute();
        $row = $result->fetch(PDO::FETCH_ASSOC);
        return $this->itemCount = $row["count"];
    }


    public function buildPagination (){
        $this->getPagesCount();
        if($_GET["category"]){
            $this->itemCount = $this->getItemsForCategory ();
        }
        $this->pagesCount = ceil($this->itemCount / $this->maxItemsOnPage);

        $url = substr(parse_url($_SERVER['REQUEST_URI'], PHP_URL_QUERY), 0, 10);

        for($i = 1; $i <= $this->pagesCount; $i++){
            if($_GET['category']){
                echo "<li class='page-item'><a class='page-link' href='index.php?".$url."&page=".$i."' >".$i."</a></li>";
            }else{
                echo "<li class='page-item'><a class='page-link' href='index.php?page=".$i."'>".$i."</a></li>";
            }

        }
    }

    public function buildItemsOnPage($currentPage){
        $pdo = $this->getPDO();
        $start = ($currentPage * $this->maxItemsOnPage) - $this->maxItemsOnPage;

        if($_GET['category']){
            $category = $_GET['category'];
            $result = $pdo->prepare("SELECT * FROM product WHERE category_id = $category ORDER BY id DESC LIMIT $start, $this->maxItemsOnPage");
        }else{
            $result = $pdo->prepare("SELECT * FROM product ORDER BY id DESC LIMIT $start, $this->maxItemsOnPage");
        }

        $result->execute();
        while($row = $result->fetch(PDO::FETCH_ASSOC)) {
            print_r("
            <div class='card' style='width: 18rem;'>
                <img class='card-img-top' src='".$row['image']."' alt='Card image cap'>
                <div class='card-body'>
                    <h5 class='card-title'>".$row['title']."</h5>
                    <a href='index.php?id=".$row['id']."' class='btn btn-primary'>Review</a>
                </div>
            </div>
            ");
        }
    }


}
