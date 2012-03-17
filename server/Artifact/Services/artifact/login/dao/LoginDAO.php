<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of LoginDAO
 *
 * @author PCOne
 */
class LoginDAO {
    //put your code here
    
    public function isUsernameValid($username){
        $conn = Connection::createConnection();
        
        $result = mysql_query("Select * From user Where username = '$username'");
        $loginid = -1;

        $tempArray=mysql_fetch_array($result);
        
        $user = null;
        
        if(mysql_num_rows($result) == 1){
            
            //AmfphpLogger::logMessage("user authenticated");
            
            $user=new User();
            $user->id=$tempArray['id'];
            $user->username=$tempArray['username'];
        }
        Connection::closeConnection($conn);

        return $user;
        
    }
    
}

?>
