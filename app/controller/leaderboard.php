<?php

namespace Controller;

use View\Loader;

class Leaderboard {
	function get()
	{
		$leaderboard = \Model\Leaderboard::get_board();
		Loader::render('template/leaderboard.twig', array(
			"teams" => $leaderboard,
			));
	}
}