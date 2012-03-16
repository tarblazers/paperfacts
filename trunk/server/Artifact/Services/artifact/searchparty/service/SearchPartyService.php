<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of SearchPartyService
 *
 * @author PCOne
 */
class SearchPartyService {
    //put your code here
    
    function SearchPartyService(){
        $this->methodTable = array(
        "startSearchParty" => array(
		"description" => "//{_explicitType:'artifact.info.model.ArtifactInfo',id:'1',name:'Divine',desc:'A new desc','isActive:'1'}",
		"arguments" => array(
            "artifactObj" => array("type" => "artifact.info.model.ArtifactInfo", "required" => true)
            ),
		"access" => "remote"
        )
        );
    }

    //For using service browser
    //{_explicitType:'artifact.info.model.ArtifactInfo',id:'1',name:'Divine',desc:'A new desc','isActive:'1''}
    /**
     *
     * @param <ArtifactInfo> $artifactObj
     * @return <CurrentSearchParty>
     */
    public function startSearchParty($artifactObj){
       settype($artifactObj,"object");
       $user=$_SESSION['loggedin_user'];
       $gameProfile=$_SESSION['game_profile'];
       $currentSearchParty=new CurrentSearchParty();
       $currentSearchParty->artifact=$artifactObj;
       $currentSearchParty->artifactLvl=$gameProfile->globalLvl;
       $currentSearchParty->progress=0;
       $currentSearchParty->setUser($user);
       $currentSearchPartyDAO=new CurrentSearchPartyDAO();
       $currentSearchPartyDAO->addNewSearchParty($currentSearchParty);
       
       return $currentSearchParty;

    }
    
}

?>
