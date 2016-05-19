<?php

namespace Controller;

use View\Loader;

class TeamAdminComplete {
	function post()
	{
		if(isset($_POST['key']) && !is_array($_POST['key']))
		{
			global $CONFIG;
			if(strcmp($CONFIG['admin_pass'], $_POST['key']) == 0)
			{
				$team = new \Model\Team();
				$team->pass = htmlspecialchars($_POST['pass']);
				$team->name = htmlspecialchars($_POST['name']);
				$team->addTeam();
				Loader::render('template/tadmincomplete.twig', array());
			}
		}
	}
}