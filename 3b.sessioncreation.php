<?php
session_start();
?>
<!DOCTYPE html>
<html>
<body>
<?php
$_SESSION["name"] = "A.THANUSHRI";
$_SESSION["regno"] = "20IT1057";
echo"Session Variables are set";
?>
<form action="sessionview.php">
    <input type="Submit" value="See session variables">
</form>
</body>
</html>