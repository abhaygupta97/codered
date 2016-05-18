<?php

namespace Controller;

use View\Loader;

class Submit {
	function get($problemCode)
	{
		$problem = new \Model\Problem($problemCode);
		Loader::render('template/submit.twig', array(
			"problem" => $problem->array
			));
	}
}