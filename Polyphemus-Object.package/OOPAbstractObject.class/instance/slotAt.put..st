accessing-slots
slotAt: anIndex put: aSpurObjectOrOop
	"Our api is 1 based but the simulator is 0 based"

	self numSlots >= anIndex ifFalse: [ SubscriptOutOfBounds signal ].	

	^ memory
		  storePointer: anIndex - 1
		  ofObject: self address
		  withValue: aSpurObjectOrOop value