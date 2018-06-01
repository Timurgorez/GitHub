<?
require_once __DIR__.'\..\models\db.php'; /* Соединяемся с базой */


//public function Validation ($var){
//        $var = htmlspecialchars($var, ENT_QUOTES);
//        $var = trim($var);
//        return $var;
//    }

//if($_GET['search']){
    //$words = $_GET['search'];
	//$words = htmlspecialchars(trim($_GET['search']));
//}

class Search
{
    //private $words = $_GET['search'];

    public function Validation ()
    {
        $words = $_GET['search'];
        $words = htmlspecialchars($words, ENT_QUOTES);
        $words = trim($words);
        return $words;
    }

    public function buildStrQuery ()
    {
        $words = $this->Validation();
        $query_search = '';

        $arraywords = explode(" ", $words);

        foreach($arraywords as $key => $value)
        {
            if(isset($arraywords[$key - 1])){
                $query_search .= ' OR ';
            }
            $query_search .= 'title LIKE "%'.$value.'%" OR description LIKE "%'.$value.'%"';
        }
        return $query_search;
    }

//    public function buildItemsOnPageWithSearch ()
//    {
//        $pdo = DB::getInstance()->PDO();
//        $query_search = $this->buildStrQuery();
//        $query = "SELECT * FROM product WHERE $query_search";
//        $result = $pdo->prepare($query);
//        $result->execute();
//
//
//        echo "<div class='row'><h1 class='searchTitle'>Результаты поиса:</h1></div>";
//        $resultOfSearch = "<div class='row content-item'>";
//        while($row = $result->fetch(PDO::FETCH_ASSOC))
//        {
//            $resultOfSearch .="
//            <div class='card' style='width: 18rem;'>
//                <img class='card-img-top' src='".$row['image']."' alt='Card image cap'>
//                <div class='card-body'>
//                    <h5 class='card-title'>".$row['title']."</h5>
//                    <a href='index.php?id=".$row['id']."' class='btn btn-primary'>Review</a>
//                </div>
//            </div>
//            ";
//        }
//        $resultOfSearch .= "</div>";
//        print_r($resultOfSearch);
//    }

}



//function search ($words){

    //$pdo = DB::getInstance()->PDO();

	//if($word == '') echo "No var GET"; return false;
	//$query_search = '';

	//$arraywords = explode(" ", $words);

	//foreach($arraywords as $key => $value){
	//	if(isset($arraywords[$key - 1])){
	//		$query_search .= ' OR ';
	//	}

	//	$query_search .= 'title LIKE "%'.$value.'%" OR description LIKE "%'.$value.'%"';
		
	//}

	//$query = "SELECT * FROM product WHERE $query_search";
    //echo $query;
//    $result = $pdo->prepare($query);
//    $result->execute();
//
//
//	echo "<h1 class='searchTitle'>Результаты поиса:</h1>";
//    while($row = $result->fetch(PDO::FETCH_ASSOC))
//    {
//        print_r("
//            <div class='card' style='width: 18rem;'>
//                <img class='card-img-top' src='".$row['image']."' alt='Card image cap'>
//                <div class='card-body'>
//                    <h5 class='card-title'>".$row['title']."</h5>
//                    <a href='index.php?id=".$row['id']."' class='btn btn-primary'>Review</a>
//                </div>
//            </div>
//            ");
//    }

//}





















