<?php
session_start();
?>
<!DOCTYPE html>
<html>
<body>
<?php
echo"Name of the student:".$_SESSION["name"]."<br>";
echo"Register number:".$_SESSION["regno"]."<br>";
?>
</body>
</html>