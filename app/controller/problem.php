<?php

namespace Controller;

use View\Loader;

class Problem {
	function get($problemCode)
	{
		Loader::render('template/problem.twig', array(
			"code" => $problemCode
			));
	}
}