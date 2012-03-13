package artifact.servermodels
{
	[RemoteClass(alias="artifact.game.model.Answer")]
   	[Bindable]
	public class Answer
	{
		public function Answer()
		{
		}
		
		public var question:String;
		public var answer:String;
		

	}
}