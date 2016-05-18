<?php

namespace Model;

class Problem {
	public $code;
	public $statement;
	public $author;
	public $name;
	public $accepted;
	public $total;
	public $output;
	public $array;

	public function __construct($code)
	{
		if($code)
		{
			$this->code = $code;
			$query = MySQL::get_instance()->prepare('select * from problems where code=:code');
			$query->execute(array(
	            "code" => $this->code,
	        ));
			$result = $query->fetchALL(\PDO::FETCH_ASSOC);
			if(sizeof($result) == 1)
			{
				$this->array = $result[0];
				$this->statement = $result[0]['statement'];
				$this->author = $result[0]['author'];
				$this->name = $result[0]['name'];
				$this->accepted = $result[0]['accepted'];
				$this->total = $result[0]['total'];
				$this->output = $result[0]['output'];
			}
		}
		return $this;
	}

	public function addSubmission($score)
	{
		$query = MySQL::get_instance()->prepare('update problems set total=total+1 where code=:code');
		$query->execute(array(
			"code" => $this->code,
		));
		if($score == 100)
		{
			$query = MySQL::get_instance()->prepare('update problems set accepted=accepted+1 where code=:code');
			$query->execute(array(
				"code" => $this->code,
			));
		}
	}
}