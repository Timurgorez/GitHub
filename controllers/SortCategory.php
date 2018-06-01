<?php

require_once __DIR__.'\..\models\db.php';
require_once __DIR__ . '\Search.php';


class SortCategory extends Search
{

    public function sorting(){
        $pdo = DB::getInstance()->PDO();
        $result = $pdo->prepare("SELECT * FROM category ");
        $result->execute();
        while($row = $result->fetch(PDO::FETCH_ASSOC))
        {
            print_r("
            <li class='sort-btn'>
                <a href='index.php?category=".$row['id']."'>".$row['name']."</a>
            </li>
            ");
        }
    }

    public function getItemsForCategory ()
    {
        $pdo = DB::getInstance()->PDO();
        if($_GET['category']){
            $category = $_GET['category'];
        }

        $result = $pdo->prepare("SELECT COUNT(*) as count FROM product WHERE category_id =  ? ");
        $result->execute([$category]);
        $row = $result->fetch(PDO::FETCH_ASSOC);
        return $row['count'];
    }

    public function getItemsForSearch ()
    {
        $pdo = DB::getInstance()->PDO();
        if($_GET['search']){
            $search = $_GET['search'];
        }
        $query_search = $this->buildStrQuery();

        $result = $pdo->prepare("SELECT COUNT(*) as count FROM product WHERE $query_search");
        $result->execute([$search]);
        $row = $result->fetch(PDO::FETCH_ASSOC);
        return $row['count'];
    }

}

