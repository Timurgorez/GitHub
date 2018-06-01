<?php
require_once __DIR__.'\..\models\db.php';

class ViewItem
{

    public function getItem()
    {
        $id = $_GET["id"];
        $pdo = DB::getInstance()->PDO();

        $result = $pdo->prepare("SELECT * FROM product WHERE id= ?");
        $result->execute([$id]);
        while($row = $result->fetch(PDO::FETCH_ASSOC))
        {
            print_r("
                    <div class='card-full'>
                        <img class='img-inside img-fluid' src='../".$row['image']."' alt='Card image cap'>
                        <div class='card-body-inside'>
                            <h5 class='card-title'>".$row['title']."</h5>
                            <p><b>Цена: ".$row['price']."</b></p>
                            <p> Размер: ".$row['size']."</p>
                            <p>Цвет: ".$row['color']."</p>
                            <p><b>Описание:</b> <br>".$row['description']."</p>
                            <button class='btn btn-success'>Buy Now</button>
                        </div>
                    </div>
                ");
        };
    }

}
