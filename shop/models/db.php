<?php


trait DB {
    private $host = "localhost";
    private $admin = "root";
    private $pass = "";
    private $db_name = "shop";
    protected $pdo;

    public function __construct(){
        try{
            $pdo = new PDO("mysql:host={$this->host};dbname={$this->db_name}", $this->admin, $this->pass);
            return $this->pdo = $pdo;
        }catch (PDOException $e){
            echo $e;
        }
    }

    public function Validation ($var){
        $var = htmlspecialchars($var, ENT_QUOTES);
        $var = trim($var);
        return $var;
    }

}

