<?php

namespace Controller;

use View\Loader;

class Enable {
	function get()
	{
		Loader::render('template/enable.twig', array());
	}

	function post()
	{
		
	}
}