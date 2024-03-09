<?php
    $con=new mysqli("localhost","root","Thanu1611","DATA");
    $name=$_POST["name"];
    $city=$_POST["city"];
    $sql="INSERT INTO USERS(name,city)VALUES('{$name}','{$city}')";
    if($con->query($sql))
    {
        echo"DATA SAVED";
    }
    else
    {
        echo"ERROR IN SAVING DATA";
    }
?>