<?php
include_once("config.php");

$result = mysqli_query($mysqli, "SELECT * FROM user ORDER BY id DESC");
?>

<html>
<head>    
    <title>User</title>
</head>

<body>
<a href="add.php">Add New User</a><br/><br/>

    <table border=1>

    <tr>
        <th>Nama</th>
        <th>Usia</th>
        <th>Kota</th>
    </tr>
    <?php  
    while($user_data = mysqli_fetch_array($result)) {         
        echo "<tr>";
        echo "<td>".$user_data['nama']."</td>";
        echo "<td>".$user_data['umur']."</td>";
        echo "<td>".$user_data['kota']."</td>";
        echo "</tr>";
    }
    ?>
    </table>
</body>
</html>