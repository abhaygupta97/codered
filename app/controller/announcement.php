<?php

namespace Controller;

use View\Loader;

class Announcement {
	function get()
	{
		Loader::render('template/announcement.twig', array(
			));
	}
}