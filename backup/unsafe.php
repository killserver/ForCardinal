<?php

if(!defined("PHP_EX")) {
	$phpEx = substr(strrchr(__FILE__, '.'), 1);
	if(empty($phpEx)) {
		$phpEx = "php";
	}
} else {
	$phpEx = PHP_EX;
}
$fileAddedCardinal = dirname(__FILE__).DIRECTORY_SEPARATOR."cardinalAdded.".$phpEx;
if(file_exists($fileAddedCardinal)) {
	include_once($fileAddedCardinal);
	if(!class_exists("cardinalAdded")) {
		die();
	}
	if(!method_exists("cardinalAdded", "regStart")) {
		die();
	}
	register_shutdown_function(array("cardinalAdded", "regStart"));
} else {
	die();
}


// ------------------------------------------------------------------------------- //


if(!defined("WITHOUT_DB")) {
	define("CRON_TIME", config::Select("cardinal_time"));
	new cardinal();
} elseif(is_writable(PATH_CACHE)) {
	if(file_exists(PATH_CACHE."cron.txt")) {
		$otime = filemtime(PATH_CACHE."cron.txt");
	} else {
		$otime = time();
	}
	define("CRON_TIME", $otime);
	new cardinal();
}


// ------------------------------------------------------------------------------- //


class cardinalAdded {

	public static function regStart() {
		$data = "Card";
		$data .= "inalV";
		$data .= "ers";
		$data .= "ion: ";
		$data .= (VERSION);
		header($data);
	}

}