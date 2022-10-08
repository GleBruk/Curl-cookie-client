<?php
$dsn = 'mysql:host=localhost;dbname=headers';
$pdo = new PDO($dsn, 'root', '');

//Удаляем старые значения заголовков из БД
$sql = 'DELETE FROM `headers`';
$query = $pdo->prepare($sql);
$query->execute();

//Заполняем БД новыми значениями
$sql = 'INSERT INTO headers(url, user_agent, cookie, referer, encoding, proxy, headers) VALUES (:url, :user_agent, :cookie, :referer, :encoding, :proxy, :headers)';
$query = $pdo->prepare($sql);
$query->execute(['url' => $_POST['url'], 'user_agent' => $_POST['user-agent'], 'cookie' => $_POST['cookie'], 'referer' => $_POST['referer'], 'encoding' => $_POST['encoding'], 'proxy' => $_POST['proxy'], 'headers' => $_POST['headers']]);

//Работа с curl
$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $_POST['url']);
curl_setopt($ch, CURLOPT_TIMEOUT, 60);
//Если в форме указано значение заголовка, то добавляем его в запрос
if($_POST['user-agent']){
    curl_setopt($ch, CURLOPT_USERAGENT, $_POST['user-agent']);
}
if($_POST['referer']){
    curl_setopt($ch, CURLOPT_AUTOREFERER, $_POST['referer']);
}
if($_POST['cookie']){
    curl_setopt($ch, CURLOPT_COOKIE, $_POST['cookie']);
}
if($_POST['encoding']){
    curl_setopt($ch, CURLOPT_ENCODING, $_POST['encoding']);
}
if($_POST['proxy']){
    curl_setopt($ch, CURLOPT_PROXY, $_POST['proxy']);
}

if($_POST['headers']){
    preg_match_all('~.*\n~',$_POST['headers'], $a);
    curl_setopt($ch, CURLOPT_HTTPHEADER, $a);
}
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
$content = curl_exec($ch);
$ch = curl_close($ch);
//Далее делаем то, что нужно с полученными данными...
print_r($content);