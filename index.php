<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Curl cookie parser</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
</head>
<body>
    <?php
    //Получаем старые значения заголовков из БД
    $dsn = 'mysql:host=localhost;dbname=headers';
    $pdo = new PDO($dsn, 'root', '');
    $query = $pdo->query('SELECT * FROM `headers`');
    $data = $query->fetch(PDO::FETCH_ASSOC);
    //Пользователь редактирует заголовки в форме так, как ему нужно
    ?>
    <h1 style="text-align: center">Форма для куки</h1>
    <form class="form-inline" action="./curl.php" method="post">
        <label style="margin-left:2%">URL</label>
        <br>
        <input type="text" class="form-control" name="url" value="<?=$data['url']?>" style="width:90%; margin-left:2%">
        <br>
        <br>
        <label style="margin-left:2%">User-Agent</label>
        <br>
        <input type="text" class="form-control" name="user-agent" value="<?=$data['user_agent']?>" style="width:90%; margin-left:2%">
        <br>
        <br>
        <label style="margin-left:2%">Cookie</label>
        <br>
        <textarea class="form-control" name="cookie" style="width:90%; height:200px; margin-left:2%"><?=$data['cookie']?></textarea>
        <br>
        <br>
        <label style="margin-left:2%">Referer</label>
        <br>
        <input type="text" class="form-control" name="referer" value="<?=$data['referer']?>" style="width:90%; margin-left:2%">
        <br>
        <br>
        <label style="margin-left:2%">Encoding</label>
        <br>
        <input type="text" class="form-control" name="encoding" value="<?=$data['encoding']?>" style="width:90%; margin-left:2%">
        <br>
        <br>
        <label style="margin-left:2%">Proxy</label>
        <br>
        <input type="text" class="form-control" name="proxy" value="<?=$data['proxy']?>" style="width:90%; margin-left:2%">
        <br>
        <br>
        <label style="margin-left:2%">Прочие заголовки</label>
        <br>
        <textarea class="form-control" name="headers" style="width:90%; height:200px; margin-left:2%"><?=$data['headers']?></textarea>
        <br>
        <hr>
        <button type="submit" class="btn btn-default" style="margin-left:2%">Выполнить</button>
        <br>
        <hr>
    </form>
</body>
</html>
