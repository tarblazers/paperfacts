package artifact.servermodels
{
	[RemoteClass(alias="artifact.inventory.model.Inventory")]
   	[Bindable]
	public class Inventory
	{
		public function Inventory()
		{
		}
		
		 public var id:int;
	     public var artifactLvl:int;

    	 public var user:User;
    	 public var artifact:ArtifactInfo;

	}
}