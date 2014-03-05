
<?php
    require 'funkcija.php';

	$lokacije = array (
		"skopje"=>"makedonija",
		"beograd"=>"srbija",
		"atina"=>"grcka",
		"madrid"=>"spanija",
		);
	
?>

<br />
<br />
<br />
<br />
<hr />

<form>
<?php

	kontrola("text","text");
	kontrola("submit","unosi");
?>
</form>


<?php
function kontrola ($typ,$val){
	
	echo "<input type='{$typ}' value ='{$val}' \>";		
}

/*
$stringce="Pristup pisanja uslovnih blokova bez vitičastih zagrada sretaćete i kod drugih struktura za kontrolu toka, ali ne i u funkcijama ili klasama";
echo str_word_count($stringce);

/*
$lipsum = "Lorem Ipsum is simply dummy text of the printing and typesetting industry.";
$lipsumArr= explode(" ",$lipsum);
$novaNiza="";
for($i=0;$i<sizeof($lipsumArr);$i++){
	if(strlen($novaNiza." ")+strlen($lipsumArr[$i])<15)
		 $novaNiza.= "".$lipsumArr[$i];

	else {
		if($novaNiza!=""){
			echo $novaNiza."<br />";
		}
		$novaNiza=$lipsumArr[$i];
	}
		
		}
echo $novaNiza;

*/

echo "<input name=\"\" type=\"text\" value=\"proba\" \>";
?>

