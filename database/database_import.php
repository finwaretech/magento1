<?php
//	$id  = isset($_GET['id']) ? $_GET['id'] : 475;


if(isset($_POST['hidden_field'])) {

    $servername = "localhost";
    $username = $_POST['user_name'];
    $password = $_POST['password'];

    // Create connection
    $conn = new mysqli($servername, $username, $password);
    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Create database -start
    $sql = "CREATE DATABASE IF NOT EXISTS vincent_mgnt10";
    $conn->query($sql);
    $conn->close();
    // Create database -end
    $dbhost = "localhost";
    $dbuser = "root";
    $dbpass = 'password';
    $dbname = "vincent_mgnt10";
    $filename = $_FILES['sql_file']['name'];
//    var_dump($_POST);
    mysql_connect($dbhost, $dbuser, $dbpass) or die('Error connecting to MySQL server: ' . mysql_error());
    mysql_select_db($dbname) or die('Error selecting MySQL database: ' . mysql_error());

    $templine = '';
    $lines = file($filename);
    foreach ($lines as $line) {
        if (substr($line, 0, 2) == '--' || $line == '')
            continue;
        $templine .= $line;
        if (substr(trim($line), -1, 1) == ';') {
            mysql_query($templine) or print('Error performing query \'<strong>' . $templine . '\': ' . mysql_error() . '<br /><br />');
            $templine = '';
        }
    }
    ?>
    <script>
        alert("Database updation successful!");
//        window.location.href = 'http://localhost/Separatefromopencart/popup_old.php?id=621';
    </script>
    <?php
}


?>
<html>
<head>
    <title>Database Creation and updation</title>
</head>
<body>
<center>
    <h1>Database updation Script </h1>
</center>

<br><br>
<form action="database_import.php" method="post" enctype="multipart/form-data">

    <div style="margin-left: 20%">
        <input type="text" name="hidden_field" hidden><br>
        <label>Username</label>
        <input type="text" name="user_name" value="root" ><br><br>
        <label>Password</label>
        <input type="password" name="password" value="password" ><br><br>
        <label>Choose the Sql file</label>
        <input type="file" name="sql_file" id="sql_file"><br><br>
        <input type="submit">
    </div>

</form>
</body>
</html>