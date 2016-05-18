<?php

namespace Controller;

use View\Loader;

class ProblemAdmin {
	function get()
	{
		Loader::render('template/padmin.twig', array());
	}
}