package artifact.servermodels
{
	[RemoteClass(alias="artifact.game.model.GameProgressResponse")]
    [Bindable]
	public class GameProgressResponse
	{
		public function GameProgressResponse()
		{
		}
		
		//TBC : typos
		
		 public var currentSearchParty:CurrentSearchParty;
    	 public var isActifactObtained:Boolean;
    	 public var artifact:Inventory;
    	 public var percentObjtained:int;
    	 public var isSomebodyGetArtifact:Boolean;
    	 public var updatedGameProfile:GameProfile;

	}
}