<?php 
require "../vendor/autoload.php";
require "../config/config.php";

Toro::serve(array(
	"/" => "Controller\\Home",
	));
