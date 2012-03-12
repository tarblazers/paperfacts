import flash.events.MouseEvent;

import mx.controls.Alert;
import mx.events.FlexEvent;
import mx.rpc.events.FaultEvent;
import mx.rpc.events.ResultEvent;
import mx.rpc.remoting.RemoteObject;

private var roTest:RemoteObject;

protected function initApp(event:FlexEvent):void{
	
	roTest  = new RemoteObject();
	roTest.destination = 'amfphp';
	roTest.source = 'LoginService';
	roTest.addEventListener(ResultEvent.RESULT,onTestResult);
	roTest.addEventListener(FaultEvent.FAULT,onTestFailure);
		
}

protected function onTestFailure(event:FaultEvent):void
{
	Alert.show('Failure : '+event.fault);
	
}
protected function onTestResult(event:ResultEvent):void
{
	Alert.show('Success : '+event.result);
	
}
protected function loginClicked(event:MouseEvent):void{
	roTest.authenticate(txiUsername.text);
}
