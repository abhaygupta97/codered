<?php
	namespace View;
	use Twig_Environment;
	class Loader
	{
		public static function make ($cache = false) {
			$twig = new Twig_Environment(new \Twig_Loader_Filesystem(dirname(__FILE__ )), array('cache' => $cache));
			return $twig;
		}
		public static function render($t,$a){
			echo self::make()->render($t,$a);
		}

	}
