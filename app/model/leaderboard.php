<?php
namespace Model;

class Leaderboard{
	public function get_board(){
		return Team::get_all();
	}
}