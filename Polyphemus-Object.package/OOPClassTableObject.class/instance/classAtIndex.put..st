accessing-classes
classAtIndex: anInteger put: anOOPClassInstanceSideObject 

	self reifyOop: (self classAtIndex: anInteger).
	
	(self reifiedSlotAt: anInteger // 1024 + 1) slotAt: anInteger % 1024 put: anOOPClassInstanceSideObject