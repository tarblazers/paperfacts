<?php
/**
 *  This file is part of amfPHP
 *
 * LICENSE
 *
 * This source file is subject to the license that is bundled
 * with this package in the file license.txt.
 * @package Amfphp_Services
 */


/**
 * This is a test/example service. Remove it for production use
 *
 * @package Amfphp_Services
 * @author sd
 */
class LoginService {
	
	public function authenticate($user){
		$ret = null;
		
		if ($user == 'abc'){
			$ret =  "Authentication successful";
		}	
		else{
			$ret = 'Authentication failure';
		}
		
		return $ret;
	}
}
?>