<?php

namespace Model;

class Announcement {
	public static function get_all()
	{
		$query = MySQL::get_instance()->prepare('select * from announcement order by id desc');
		$query->execute();
		$result = $query->fetchALL(\PDO::FETCH_ASSOC);
		return $result;
	}
}