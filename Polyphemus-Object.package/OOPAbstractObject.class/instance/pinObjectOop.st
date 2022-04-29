modifying
pinObjectOop
	
	| forwarder |
	memory pinObject: address.
	forwarder := OOPAbstractEntity newFor: address image: image.
	self assert: forwarder isForwarderOop.
 	self becomeForward: forwarder