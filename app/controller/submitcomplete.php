<?php

namespace Controller;

use View\Loader;

class SubmitComplete {
	function get($problemCode)
	{
		header("Location: ../" . $problemCode);
	}
	function post($problemCode)
	{
		$problem = new \Model\Problem($problemCode);
		$team = new \Model\Team(htmlspecialchars($_POST['pass']));
		if($team->pass == NULL)
		{
			echo "WRONG KEY!";
		}
		else if(isset($_POST['output']))
		{

			$out1 = $_POST['output'];
		    $out2 = $problem->output;
		    
		    $array1 = preg_split ('/$\R?^/m', $out1);
		    $array2 = preg_split ('/$\R?^/m', $out2);
		    
		    $score = 0;
		    
		    for($i = 0; $i < min(sizeof($array1), sizeof($array2));$i++)
		    {
		        if(strcmp(trim($array1[$i]), trim($array2[$i])) == 0)
		        {
		            $score++;
		        }
		    }
		    
		    $final_score = (int)(($score/sizeof($array1))*100);
		    $final_score -= $final_score%10;

		    $problem->addSubmission($final_score);

		    $team->addSubmission($problemCode, $final_score);

		    Loader::render('template/submitcomplete.twig', array(
		    	"problem" => $problem->array,
		    	"score" => $final_score,
		    	"team" => $team->name
		    	));
		}
	}
}