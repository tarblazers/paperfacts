package  
{
//	import com.artifact.servermodel.ArtifactInfo;
//	import com.artifact.servermodel.CompleteProfileWrapper;
//	import com.artifact.servermodel.CurrentSearchParty;
//	import com.artifact.servermodel.GameProfile;
//	import com.artifact.servermodel.GameProgress;
//	import com.artifact.servermodel.GameProgressResponse;
//	import com.artifact.servermodel.Inventory;
//	import com.artifact.servermodel.User;
//	
	import artifact.constants.ArtifactServiceConstants;
	
	import mx.controls.Alert;
	import mx.core.Application;
	import mx.managers.PopUpManager;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.remoting.mxml.RemoteObject;
	import mx.utils.ObjectUtil;
	
	/**
	 *This class take care of the server interation all the services call is diverted from this class 
	 * 
	 */
	public class TestArtifactServiceController
	{
		public function ArtifactServiceController()
		{
		}
		public function myFaultHandler(event:FaultEvent):void{
			Alert.show(event.message.toString())
		}
		/**
		 * Authentication
		 * This function check the username from the services 
		 **/
		public function authenticate(username:String):void{
			var ro:RemoteObject=new RemoteObject;
			ro.showBusyCursor=true;
			ro.endpoint=ArtifactServiceConstants.SERVER_URL;
			ro.destination=ArtifactServiceConstants.LOGIN_SERVICE;
			ro.source=ArtifactServiceConstants.LOGIN_SERVICE;
			ro.addEventListener(FaultEvent.FAULT,myFaultHandler);
			ro.addEventListener(ResultEvent.RESULT,authenticateResultHandler);
			trace(username)
			ro.authenticate(username)
			//ro.getPizza('my pizza');
		}
		/**
		 * This is the result handler of the authentication remote call 
		 * and allow user to go to the home page if the username is correct
		 **/
		public function authenticateResultHandler(event:ResultEvent):void{
			trace('>>>>>>>>>>>>>>>>>>  '+event.result);
			Alert.show(event.result.toString(),'Login');
			
			/*var user:User=event.result as User;
			if(user){
				ArtifactUIController.loggedInUser=user
				getProfile();
				Alert.show('Result '+event.result);
				
			}else{
				Alert.show('Wrong username');
			}*/
		}
		
	}
}