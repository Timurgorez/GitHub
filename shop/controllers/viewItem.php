<?php
require_once __DIR__.'\..\models\db.php';

class ViewItem{
    use DB;

    public function getItem(){
        $id = $_GET["id"];
        $pdo = $this->pdo;

        $result = $pdo->prepare("SELECT * FROM product WHERE id= ?");
        $result->execute([$id]);
        while($row = $result->fetch(PDO::FETCH_ASSOC)){
            print_r("
                    <div class='card-full'>
                        <img class='card-img-top img-fluid' src='../".$row['image']."' alt='Card image cap'>
                        <div class='card-body'>
                            <h5 class='card-title'>".$row['title']."</h5>
                            <p><b>Цена: ".$row['price']."</b></p>
                            <p> Размер: ".$row['size']."</p>
                            <p>Цвет: ".$row['color']."</p>
                            <p><b>Описание:</b> <br>".$row['description']."</p>
                        </div>
                    </div>
                ");
        };
    }

}
