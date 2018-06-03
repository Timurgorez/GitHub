<?php

//require_once __DIR__.'\..\models\db.php';
require_once __DIR__ . '\SortCategory.php';

class Pagination extends SortCategory
{

    protected $maxItemsOnPage = 15; // Количество товара на одной странице.
    protected $itemCount ; // Общее количество товара в базе.
    protected $pagesCount ; // Общее число станиц которое нужно для товара.


    public function getPagesCount ()
    {
        $pdo = DB::getInstance()->PDO();
        $result = $pdo->prepare("SELECT COUNT(*) as count FROM product");
        $result->execute();
        $row = $result->fetch(PDO::FETCH_ASSOC);
        return $this->itemCount = $row["count"];
    }


    public function buildPagination ()
    {
        $this->getPagesCount();
        if($_GET["category"]){
            $this->itemCount = $this->getItemsForCategory ();
        }
        if($_GET["search"]){
            $this->itemCount = $this->getItemsForSearch ();
        }
        $this->pagesCount = ceil($this->itemCount / $this->maxItemsOnPage);

        $urlForCategory = substr(parse_url($_SERVER['REQUEST_URI'], PHP_URL_QUERY), 0, 10);
        $urlForSearch = explode('?',$_SERVER['REQUEST_URI']);

        for($i = 1; $i <= $this->pagesCount; $i++)
        {
            //current page paint in blue.
            if($_GET['page'] == $i){$active = 'active';}elseif(!($_GET['page']) && $i == 1){$active = 'active';}else{$active = '';};

            if($_GET['category']){  // build pagination for sort category.
                echo "<li class='page-item ".$active."'><a class='page-link' href='index.php?".$urlForCategory."&page=".$i."' >".$i."</a></li>";
            }elseif($_GET['search']){  // build pagination for search.
                echo "<li class='page-item ".$active."'><a class='page-link' href='index.php?".$urlForSearch[1]."&page=".$i."' >".$i."</a></li>";
            }else{    // build pagination on main page.
                echo "<li class='page-item ".$active."'><a class='page-link' href='index.php?page=".$i."'>".$i."</a></li>";
            }

        }
    }

    public function buildItemsOnPage($currentPage)
    {
        $pdo = DB::getInstance()->PDO();
        $start = ($currentPage * $this->maxItemsOnPage) - $this->maxItemsOnPage;

        if($_GET['category']){
            $category = $_GET['category'];
            $result = $pdo->prepare("SELECT * FROM product WHERE category_id = $category ORDER BY id DESC LIMIT $start, $this->maxItemsOnPage");
        }elseif($_GET['search']){
            $search = $this->buildStrQuery();
            $result = $pdo->prepare("SELECT * FROM product WHERE $search ORDER BY id DESC LIMIT $start, $this->maxItemsOnPage");
        }else{
            $result = $pdo->prepare("SELECT * FROM product ORDER BY id DESC LIMIT $start, $this->maxItemsOnPage");
        }

        $result->execute();
        if($_GET['search']){
            echo "<div class='row'><h1>Результаты поиска:</h1></div><div class='row content-item'>";
        }
        while($row = $result->fetch(PDO::FETCH_ASSOC))
        {

            print_r("
            <div class='card' style='width: 18rem;'>
                <div class='card-img'>
                    <img class='card-img-top img-fluid' src='".$row['image']."' alt='Card image cap'>
                </div>
                <div class='card-body'>
                    <h5 class='card-title'>".$row['title']."</h5>
                    <a href='index.php?id=".$row['id']."' class='btn btn-primary'>Review</a>
                </div>
            </div>
            ");
        }
        if($_GET['search']){
            echo "</div>";
        }
    }


}
