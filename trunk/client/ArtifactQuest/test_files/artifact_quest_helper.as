import artifact.controllers.ArtifactServiceController;

import flash.events.MouseEvent;

import mx.controls.Alert;
import mx.events.FlexEvent;
import mx.rpc.events.FaultEvent;
import mx.rpc.events.ResultEvent;
import mx.rpc.remoting.RemoteObject;


protected function initApp(event:FlexEvent):void{
	
}

protected function loginClicked(event:MouseEvent):void{
	
	new ArtifactServiceController().authenticate(txiUsername.text);
	
}