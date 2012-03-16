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
   
    function LoginService(){
        $this->methodTable = array(
            "authenticate" => array(
            "description" => "//put your code here",
            "access" => "remote"
            )
        );
    }
    
    public function authenticate($username){
     //AmfphpLogger::logMessage(">>>>>>>>>>>>> Entering authenticate");
        
        $logindao = new LoginDAO();
        $user=$logindao->isUsernameValid($username);
        
        if($user){
           //session_start();
           $_SESSION['loggedin_user']=$user;
           AmfphpLogger::logMessage("Session started for user : ");
           try {
               AmfphpLogger::logMessage($user->username);
           } catch (Exception $exc) {
                AmfphpLogger::logMessage('$user->username had exception, possibly $user is null');
           }
         }
        
        return $user;
    }
}
?>