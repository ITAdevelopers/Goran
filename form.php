
<?php

/* OVO JE PRVA VARIJANTA POVEZIVANJA SA BAZOM KOJU SAM KOMENTARISAO NAKON ŠTO SAM PROMIJENIO NA PDO 

$con = mysqli_connect("localhost", "root", "", "itadev");
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
  else
  
  $sql="insert into korisnici (ID, ime, lozinka, status) values (null, '$_POST[username]', '$_POST[password]', 2)";
  if (!mysqli_query($con,$sql))
  {
  die('Error: ' . mysqli_error($con));
  }
echo "dodao";
 */
/* $sql= "select * from korisnici";
$res = mysqli_query($con, $sql);
while ($red = mysqli_fetch_assoc($res)) {

echo $red['ime'];
echo '<br />';
}
mysqli_close($con);?>
 */

 
 $pdo = new PDO("mysql:host=localhost;dbname=itadev", "root", ""); 
 $pdo->exec("insert into korisnici (ID, ime, lozinka, status) values (null, '$_POST[username]', '$_POST[password]', 2)");
 $pdo = null;
 
 header('Location: http://localhost/cms/index.php');