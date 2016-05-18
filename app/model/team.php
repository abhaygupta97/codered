<?php

namespace Model;

class Team {
	public $name;
	public $key;
	public $score;
	public $penalty;
	public $points;
	public $array;

	static function get_all()
	{
		$query = MySQL::get_instance()->prepare('select * from teams order by score desc, penalty asc');
		$query->execute();
		$result = $query->fetchALL(\PDO::FETCH_ASSOC);
		return $result;
	}

	public function __construct($key)
	{
		if($key)
		{
			$this->key = $key;
			$query = MySQL::get_instance()->prepare('select * from teams where key=:key');
			$query->execute(array(
				"key" => $this->key,
				));
			$result = $query->fetchALL(\PDO::FETCH_ASSOC);
			if(sizeof($result) == 1)
			{
				$this->array = $result[0];
				$this->name = $result[0]['name'];
				$this->score = $result[0]['score'];
				$this->penalty = $result[0]['penalty'];
				$this->points = array();
				$temp = ProblemSet::get_all();
				for($i = 0;$i < sizeof($temp);$i++)
				{
					array_push($this->points, $result[0][$temp[$i]['code']]);
				}
			}
			return $this;
		}
	}

}