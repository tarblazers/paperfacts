<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Connection
 *
 * @author PCOne
 */
class Connection {
    public static function createConnection(){
        $conn = mysql_connect(Database::server,  Database::username,  Database::password);
        if(!$conn){
            NetDebug::trace('Could not connect');
            die ('could not connect'. mysql_error());
        }
        
        mysql_select_db(Database::databasename,$conn);
        
        return $conn;               
    }
    
    public static function closeConnection($conn){
        mysql_close($conn);
    }
       
}

?>
