modifying
pinObjectOop
	
	| forwarder |
	memory pinObject: address.
	forwarder := AbstractSpurEntity newFor: address image: image.
	self assert: forwarder isForwarderOop.
 	self becomeForward: forwarder