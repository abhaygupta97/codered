<?php

namespace Controller;

use View\Loader;

class ProblemAdminComplete {
	function post()
	{
		if(isset($_POST['key']) && !is_array($_POST['key']))
		{
			global $CONFIG;
			if(strcmp($CONFIG['admin_pass'], $_POST['key']) == 0)
			{
				$problem = new \Model\Problem();
				$problem->code = $_POST['code'];
				$problem->output = $_POST['output'];
				$problem->statement = $_POST['statement'];
				$problem->author = $_POST['author'];
				$problem->name = $_POST['name'];
				$problem->addProblem();
				Loader::render('template/padmincomplete.twig', array());
			}
		}
	}
}