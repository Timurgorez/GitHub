<?php

require_once "simplehtmldom_1_5/simple_html_dom.php";
$category = [
    '1' => 'mobile/189', '2' => 'tabletpc/262', '3' => 'notebooks/188'
];
function parcer ($category)
{
    $elements =[];
    foreach($category as $key => $value){
        $url = 'https://www.citrus.ua/shop/goods/'.$value.'/?PAGEN_9=';
        $category_id = $key;
        for($i = 1; $i <= 3; $i++){
            $html = file_get_html($url.$i);
            // цикл для загрузки картинок.
            foreach($html->find('.section_preview') as $img) {
                $ch = curl_init('https://www.citrus.ua'.$img->src);
                $name = substr($img->src, -36, 32);
                $pathForImg = substr($value, 0, -4);
                $fp = fopen('img/'.$pathForImg.'/'.$name.'.jpg', 'wb');
                curl_setopt($ch, CURLOPT_FILE, $fp);
                curl_setopt($ch, CURLOPT_HEADER, 0);
                curl_exec($ch);
                curl_close($ch);
                fclose($fp);
            }
            // цикл для заполнения массива ELEMENTS.
            foreach($html->find('.module_item') as $elem) {
                $item['title'] = $elem->find('.el_title a', 0)->plaintext;

                    foreach($elem->find('.section_preview') as $img) {
                        //$name = explode("." ,$img->src);
                        $name = substr($img->src, -36, 32);
                        $pathForImgInArray = substr($value, 0, -4);
                        if(!$name == ''){
                            $item['image'] = 'img/'.$pathForImgInArray.'/' . $name . '.jpg';
                        }
                    }

                $item['price'] =  $elem->find('.catalog-price', 0)->plaintext;
                $item['description'] = $elem->find('.mini_props, .props, .mini_props_in_section', 0)->plaintext;
                $item['category_id'] = $category_id ;
                $elements[] = $item;
            }
        }
    }
    return $elements;
}

$arr = parcer($category);
print_r($arr);//массив со всеми данными.




 //преобразовываем его в json вид
$json = json_encode($arr);
// создаем новый файл
$file = fopen('data.json', 'w');
// и записываем туда данные
$write = fwrite($file,$json);
// проверяем успешность выполнения операции
//if($write) echo "Данные успешно записаны!<br>";
//else echo "Не удалось записать данные!<br>";
//закрываем файл
fclose($file);





//$urlImg = [];
//foreach($html->find('.section_preview') as $img) {
//    $name = substr($img->src, -36, 32);
//    if(!$name == ''){
//        $urlImg[] = 'img/' . $name . '.jpg';
//    }
//}
//print_r($urlImg);
//
//foreach($html->find('.section_preview') as $img) {
//
//    $ch = curl_init('https://www.citrus.ua'.$img->src);
//    $name = substr($img->src, -36, 32);
//
//    $fp = fopen('img/'.$name.'.jpg', 'wb');
//    curl_setopt($ch, CURLOPT_FILE, $fp);
//    curl_setopt($ch, CURLOPT_HEADER, 0);
//    curl_exec($ch);
//    curl_close($ch);
//    fclose($fp);
//    echo "Load : https://www.citrus.ua".$img->src ."<br>";
//}
//print_r($urlImg);
//https://www.citrus.ua/upload/new_iblock/a84/  03  9e7b6  8f1cd  1684e  73ff8  ff7bc  9dea2.jpg
//$ch = curl_init('https://www.citrus.ua/upload/new_iblock/4ca/522aa8a0149196fca37cf95e15207fdd.jpg');
//$fp = fopen('img/logo.jpg', 'wb');
//curl_setopt($ch, CURLOPT_FILE, $fp);
//curl_setopt($ch, CURLOPT_HEADER, 0);
//curl_exec($ch);
//curl_close($ch);
//fclose($fp);



