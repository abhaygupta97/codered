<?php

namespace Controller;

use View\Loader;

class ProblemSet {
	function get()
	{
		Loader::render('template/problemset.twig', array());
	}
}