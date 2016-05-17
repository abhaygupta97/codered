<?php

namespace Controller;

use View\Loader;

class Home{
	function get()
	{
		Loader::render('template/home.twig',array());
	}
}
