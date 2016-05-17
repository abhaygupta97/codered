<?php

namespace Model;

class Problem {
	public $code;
	public $statement;
	public $author;
	public $name;
	public $accepted;
	public $total;
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
			}
		}
		return $this;
	}
}