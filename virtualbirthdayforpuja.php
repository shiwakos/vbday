<?php  require_once('includes/db.php');  ?>
<?php  require_once('includes/session.php');  ?>
<?php  require_once('includes/functions.php');  ?>
<?php  require_once('includes/UserInformation.php');  ?>



<?php

echo " This is a success!";


if (!$_SESSION['validationkey']) {
    $_SESSION["ErrorMessage"]= "Please validate by entering your number ending with ***948";
       Redirect_to("index.php");
}


?>