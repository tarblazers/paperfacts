package artifact.servermodels
{
	[RemoteClass(alias="artifact.searchparty.model.CurrentSearchParty")]
    [Bindable]
	public class CurrentSearchParty
	{
		public function CurrentSearchParty()
		{
		}
		
		public var id:int;
    	public var artifactLvl:int;
    	public var progress:int;
    	public var user:User;
    	public var artifact:ArtifactInfo;
    	
    	public function get numberOfCommonFriends():int{
    		return ArtifactQuest.artifactUIController.findCommonFriendsById(artifact.id);
    	}
    	
    	public function get commonFriends():Array{
    		return ArtifactQuest.artifactUIController.giveCommonFriendsProfileByArtifactId(artifact.id);
    	}

	}
}