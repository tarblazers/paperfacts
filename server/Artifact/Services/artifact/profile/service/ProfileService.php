<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of ProfileService
 *
 * @author PCOne
 */

class ProfileService {
    //put your code here
    function ProfileService(){
        $this->methodTable = array(
        "getProfile" => array(
            "description" => "No description given.",
            "arguments" => array(),
            "access" => "remote"
            ),
           "addSkill" => array(
            "description" => "No description given.",
            "access" => "remote"
            )
        );
    }
    
    /**
     *
     * @return <CompleteProfileWrapper>
     */
    public function getProfile(){
                
        $user = $_SESSION['loggedin_user'];
        
        AmfphpLogger::logMessage("getting profile info : session contains : ");
        AmfphpLogger::logMessage($user->username);
        
        
        $completeProfileWrapper=new CompleteProfileWrapper();
        
        $userProfileDAO=new UserProfileDAO();
        $userProfile=$userProfileDAO->getUserProfile($user);
        $completeProfileWrapper->setUserProfile($userProfile);
        $_SESSION['user_profile']=$userProfile;

        $friendUtil=new FriendsUtil();
        $friends=$friendUtil->getFriends($user);
        $completeProfileWrapper->friendsArray=$friends;

        $gameUtil=new GameUtil;
        $gameProfile=$gameUtil->getGameProfile($user);
        $completeProfileWrapper->setGameProfile($gameProfile);
        $_SESSION['game_profile']=$gameProfile;

        $currentSearchPartyUtil=new CurrentSearchPartyUtil();
        $currentSearchParties=$currentSearchPartyUtil->getCurrentSearchParty($user);
        $completeProfileWrapper->currentSearchPartiesArray=$currentSearchParties;

        $friendSearchParties=$currentSearchPartyUtil->getFriendSearchParty($user);
        $completeProfileWrapper->friendSearchPartiesArray=$friendSearchParties;

        $inventoryUtil=new InventoryUtil();
        $myInventory=$inventoryUtil->getInventory($user);
        $completeProfileWrapper->myArtifacts=$myInventory;

        return $completeProfileWrapper;
    }
    
    /**
     *
     * @param <String> $type
     * @return <GameProfile>
     */
    public function addSkill($type){
        
        $userProfileDao=new UserProfileDAO;
        $gameProfile=$_SESSION['game_profile'];
        
        if($type == ServerConstants::SPY){
            $columnName="spylvl";
        }else if($type == ServerConstants::SCOUT){
            $columnName="scoutlvl";
        }else if($type == ServerConstants::BUY){
            $columnName="buylvl";
        }else if($type == ServerConstants::SHARE){
            $columnName="sharelvl";
        }
        
        if($userProfileDao->addSkill($columnName, $gameProfile)){
            if($type == ServerConstants::SPY){
                $gameProfile->spyLvl=$gameProfile->spyLvl+1;
            }else if($type == ServerConstants::SCOUT){
                $gameProfile->scoutLvl=$gameProfile->scoutLvl+1;
            }else if($type == ServerConstants::BUY){
                $gameProfile->buyLvl=$gameProfile->buyLvl+1;
            }else if($type == ServerConstants::SHARE){
                $gameProfile->shareLvl=$gameProfile->shareLvl+1;
            }
            $_SESSION['game_profile']=$gameProfile;
            return $gameProfile;
        }else{
            return null;
        }
    }
    
}

?>
