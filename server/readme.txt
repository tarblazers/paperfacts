Problem : 

This setup works fine with a basic PizzaService function from client.

It fails with a 'Channel Disconnected' error when using the LoginService from the client (commited in the client branch).


Error Details : 

Failure : [RPC Fault faultString="Channel disconnected" faultCode="Client.Error.DeliveryInDoubt" faultDetail="Channel disconnected before an acknowledgement was received"]


Cause : 

UTF-8 with BOM charecter was messing up the amfphp byte-stream



Solution : 

change encoding to without UTF-8 without BOM
