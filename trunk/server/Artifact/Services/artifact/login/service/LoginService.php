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

include_once("../dao/LoginDAO.php");
include_once("../model/User.php");
//include_once("../../profile/model/UserProfile.php");
include_once("../../db/connections/Connection.php");
include_once("../../db/properties/Database.php");


class LoginService {
   
    function LoginService(){
        $this->methodTable = array(
            "authenticate" => array(
            "description" => "//put your code here",
            "access" => "remote"
            )
        );
    }
    
    public function authenticate($username){
      
        /*if ($username == "abc"){
            return 'authentication successful';                
        }else{
            return null;
        }*/
        
        $logindao = new LoginDAO();
        $user=$logindao->isUsernameValid($username);
        if($user){
           //session_start();
           $_SESSION['loggedin_user']=$user;
           //NetDebug::trace('session started for user');
          // NetDebug::trace($user);
        }
        
        return $user;
    }
}
?>