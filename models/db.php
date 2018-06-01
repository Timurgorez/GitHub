<?php


//trait DB {
//    private $host = "localhost";
//    private $admin = "root";
//    private $pass = "";
//    private $db_name = "shop";
//    protected $pdo;
//
//    public function __construct(){
//        try{
//            $pdo = new PDO("mysql:host={$this->host};dbname={$this->db_name}", $this->admin, $this->pass);
//            return $this->pdo = $pdo;
//        }catch (PDOException $e){
//            echo $e;
//        }
//    }
//
//    public function Validation ($var){
//        $var = htmlspecialchars($var, ENT_QUOTES);
//        $var = trim($var);
//        return $var;
//    }
//
//}

//$pdo =

class DB {
    /**
     * @var Singleton
     */

    private static $instance = null;
    private $pdo = null;

    private static $defaultConfig = [
        'host' => 'localhost',
        'port' => '3306',
        'db_name' => 'shop',
        'admin' => 'root',
        'pass' => '',
    ];

    private function __wakeup(){}
    private function __clone(){}
    public function __construct($config = [])
    {
        if(empty($config))
        {
            $config = self::$defaultConfig;
        }
        try{
            $this->pdo = new PDO("mysql:host={$config['host']}; port={$config['port']}; dbname={$config['db_name']}", $config['admin'], $config['pass']);
        }catch (PDOException $e){
            echo $e->getMessage();
        }
    }

    public static function getInstance($config = [])
    {
        if(!isset(static::$instance))
        {
            self::$instance = new self($config);
        }
        return self::$instance;
    }
    public function PDO()
    {
        return $this->pdo;
    }

}



