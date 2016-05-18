<?php

namespace Controller;

use View\Loader;

class TeamAdmin {
	function get()
	{
		Loader::render('template/tadmin.twig', array());
	}
}