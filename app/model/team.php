<?php

namespace Model;

class Team {
	public $name;
	public $pass;
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

	public function __construct($pass)
	{
		if($pass)
		{
			$this->pass = $pass;
			$query = MySQL::get_instance()->prepare('select * from teams where pass=:pass');
			$query->execute(array(
				"pass" => $this->pass,
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

	function addSubmission($code, $score)
	{
		$query = MySQL::get_instance()->prepare('select * from teams where pass=:pass');
		$query->execute(array(
			"pass" => $this->pass,
		));
		$result = $query->fetchALL(\PDO::FETCH_ASSOC);
		$init_score = $result[0][$code];
		if($score > $init_score)
		{
			$query = MySQL::get_instance()->prepare('update teams set score=score+:val, ' . $code . '=:score where pass=:pass');
			$query->execute(array(
				"val" => ($score-$init_score),
				"score" => $score,
				"pass" => $this->pass,
			));
		}
	}
}