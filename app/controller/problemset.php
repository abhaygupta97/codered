<?php

namespace Controller;

use View\Loader;

class ProblemSet {
	function get()
	{
		$problemset = \Model\ProblemSet::get_all();
		Loader::render('template/problemset.twig', array(
			"problems" => $problemset
			));
	}
}