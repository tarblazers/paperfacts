package artifact.constants
{
	public class ArtifactServiceConstants
	{
		public function ArtifactServiceConstants()
		{
		}
		
		public static var SERVER_URL:String = "http://localhost/Artifact/"
		
		public static const LOGIN_SERVICE:String="artifact.login.service.LoginService";
		public static const GET_PROFILE:String="artifact.profile.service.ProfileService";
		public static const GET_ARTIFACTS_SERVICE:String="artifact.info.service.ArtifactService";
		public static const NEW_SEARCH_PARTY_SERVICE:String="artifact.searchparty.service.SearchPartyService";
		public static const GAME_SERVICE:String="artifact.game.service.GameService";
	}
}