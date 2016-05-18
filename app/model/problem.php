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

	public function __construct($code = NULL)
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

	public function addProblem()
	{
		$query = MySQL::get_instance()->prepare('insert into problems values(:code, :name, :statement, :author, 0, 0, :output)');
		$query->execute(array(
			"code" => $this->code,
			"name" => $this->name,
			"statement" => $this->statement,
			"author" => $this->author,
			"output" => $this->output,
		));
		$query = MySQL::get_instance()->prepare('alter table teams add ' . $this->code . ' int(5) not null default \'0\'');
		$query->execute();
	}
}