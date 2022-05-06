modifying
pinObjectOop
	
	| forwarder |
	memory pinObject: address.
	forwarder := OOPAbstractEntity newFor: address memory: memory.
	self assert: forwarder isForwarderOop.
 	self becomeForward: forwarder