<?php

require "../vendor/autoload.php";
require "../config/config.php";

ToroHook::add("404", function() {
	echo "404 Not Found!";
});

Toro::serve(array(
	"/" => "Controller\\Home",
	"/problems" => "Controller\\ProblemSet",
	"/problems/:alpha" => "Controller\\Problem",
	"/announcement" => "Controller\\Announcement",
	"/submit/:alpha" => "Controller\\Submit",
	"/submit/:alpha/complete" => "Controller\\SubmitComplete",
	"/leaderboard" => "Controller\\Leaderboard",
));
