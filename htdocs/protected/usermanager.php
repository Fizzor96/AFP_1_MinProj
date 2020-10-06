<?php 
function IsUserLoggedIn() {
	return $_SESSION  != null && array_key_exists('uid', $_SESSION) && is_numeric($_SESSION['uid']);
}

function UserLogout() {
	session_unset();
	session_destroy();
	header('Location: index.php');
}

function UserLogin($username, $password) {
	$query = "SELECT id, felhasznalonev, email, jog FROM felhasznalok WHERE felhasznalonev =:felhasznalonev AND jelszo = :jelszo";
	$params = [
		':felhasznalonev' => $username,
		':jelszo' => sha1($password)
	]; 

	require_once DATABASE_CONTROLLER;
	$record = getRecord($query, $params);
	if(!empty($record)) {
		$_SESSION['uid'] = $record['id'];
		$_SESSION['felhasznalonev'] = $record['felhasznalonev'];
		$_SESSION['jelszo'] = $record['jelszo'];
		$_SESSION['email'] = $record['email'];
		$_SESSION['jog'] = $record['jog'];
		header('Location: index.php');
	}
	return false;
}
?>