<?php

namespace Controller;

use View\Loader;

class Problem {
	function get($problemCode)
	{
		$problem = new \Model\Problem($problemCode);
		Loader::render('template/problem.twig', array(
			"problem" => $problem->array,
			));
	}
}