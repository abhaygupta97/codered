<?php

namespace Model;

class ProblemSet {
	static function get_all()
	{
		$query = MySQL::get_instance()->prepare('select * from problems order by accepted desc');
        $query->execute();
        $result = $query->fetchALL(\PDO::FETCH_ASSOC);
        return $result;
	}
}