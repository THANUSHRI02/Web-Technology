<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Data accessing</title>
    <style>
        body{
            font-family: Arial, Helvetica, sans-serif;
        }
        *{
            box-sizing:border-box ;
        }
        form.search_form input[type=text]
        {
            padding: 10px;
            font-size: 17px;
            border:1px solid grey;
            float:left;
            width: 80%;
            background:#f1f1f1;
        }
        form.search_form button
        {
            float:left;
            width: 20%;
            padding: 10px 5px;
            background: #2196F3;
            color:white;
            font-size: 17px;
            border:1px solid grey;
            border-left: none;
            cursor: pointer;
        }
        form.search_form button:hover
        {
            background: #0b7dda;
        }
    </style>
</head>
<body>
    <center>
        <h1>WELCOME TO BOOK STORE</h1>
        <h3>Enter ISBN number to search book</h3>
    </center><br>
    <form class="search_form" action="" method="POST" style="margin:auto;max-width:500px">
        <input type="text" placeholder="Search" name="search">
        <button type="submit">Submit<i class="fafa-search"></i>
    </button>
    </form><br><br><br>
    <?php
    $conn = new mysqli("localhost","root","Thanu1611","data");
    if(isset($_POST['search']))
    {
        $name = $_POST['search'];
        $sql = "SELECT * FROM BOOKSTORE WHERE ISBN='$name'";
        $result = mysqli_query($conn, $sql);
        if(mysqli_num_rows($result)>0)
        {
            echo " <table border=1>
            <thead>
                <tr>
                    <td>ISBN</td>
                    <td>BOOK NAME</td>
                    <td>AUTHORS</td>
                    <td>DESCRIPTION</td>
                    <td>PRICE</td>
                    <td>PUBLISHER ID</td>
                </tr>
            </thead>
            <tbody>";
            while( $row=mysqli_fetch_assoc($result))
            {
                echo "<tr>
                <td>".$row["ISBN"]."</td>
                <td>".$row["BOOK NAME"]."</td>
                <td>".$row["AUTHORS"]."</td>
                <td>".$row["DESCRIPTION"]."</td>
                <td>".$row["PRICE"]."</td>
                <td>".$row["PUBLISHER ID"]."</td>
            </tr>";
            }
        }
        else{
            echo "0 results";
        } 
    }
    echo "</tbody>
    </table>";
    $conn->close();
    ?>        
</body>
</html>