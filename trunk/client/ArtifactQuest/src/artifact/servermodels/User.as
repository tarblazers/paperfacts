package artifact.servermodels
{
	[RemoteClass(alias="artifact.login.model.User")]
    [Bindable]
	public class User
	{
		
		public var id:int;
		public var username:String;

	}
}