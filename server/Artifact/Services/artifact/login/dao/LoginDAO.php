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
        $daoFactory = new DAOFactory();
        $queryString = "Select * From user Where username = '$username'";
        $resultObj = $daoFactory->customQuery($queryString,false);
        
        $rowCount = $resultObj->rowsReturned;
        $tempArray = $resultObj->resultArray;
        
        $user = null;
        
        if($rowCount == 1){
            
            //AmfphpLogger::logMessage("user authenticated");
            
            $user=new User();
            $user->id=$tempArray['id'];
            $user->username=$tempArray['username'];
        }

        return $user;
        
    }
    
}

?>
