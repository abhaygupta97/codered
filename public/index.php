<?php 
require "../vendor/autoload.php";
require "../config/config.php";

Toro::serve(array(
	"/" => "Controller\\Home",
	"/problems" => "Controller\\ProblemSet",
	"/problems/:alpha" => "Controller\\Problem",
	));
