<?php

require_once __DIR__.'\..\models\db.php';



class SortCategory extends DB{

    public function sorting(){
        $pdo = $this->getPDO();
        $result = $pdo->prepare("SELECT * FROM category ");
        $result->execute();
        while($row = $result->fetch(PDO::FETCH_ASSOC)) {
            print_r("
            <li class='sort-btn'>
                <a href='index.php?category=".$row['id']."'>".$row['name']."</a>
            </li>
            ");
        }
    }

    public function getItemsForCategory (){
        $pdo = $this->getPDO();
        if($_GET['category']){
            $category = $_GET['category'];
        }

        $result = $pdo->prepare("SELECT COUNT(*) as count FROM product WHERE category_id =  ? ");
        $result->execute([$category]);
        $row = $result->fetch(PDO::FETCH_ASSOC);
        return $row['count'];
    }

}

