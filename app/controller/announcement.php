<?php

namespace Controller;

use View\Loader;

class Announcement {
	function get()
	{
		$list = \Model\Announcement::get_all();
		Loader::render('template/announcement.twig', array(
			"announcements" => $list,
		));
	}
}