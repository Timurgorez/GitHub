<?php
require_once __DIR__.'\..\models\db.php';
//require_once __DIR__.'\..\parse.php';


class InsertToDB
{
    private $result ;

    public function __construct ()
    {
        $file = file_get_contents( __DIR__.'\..\data.json' ); // в примере все файлы в корне
        $result = json_decode($file);
        $this->result = $result;

    }


    public function insertToDb ()
    {
        $pdo = DB::getInstance()->PDO();

        //print_r($this->result);
        //echo $this->arr;
        $result = $this->result;

        foreach($result as $arr)
        {
            if(is_object($arr)){
                $arr = get_object_vars($arr);
            }
            $result = $pdo->prepare("INSERT INTO product (title, image, price, description, category_id)
                                      VALUE (?, ?, ?, ?, ?)
            ");
            $result->execute([$arr['title'], $arr['image'], $arr['price'], $arr['description'], $arr['category_id']]);

        }
    }
}
$f = new InsertToDB();
$f->insertToDb();