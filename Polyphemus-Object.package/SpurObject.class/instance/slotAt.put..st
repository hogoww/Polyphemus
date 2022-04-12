accessing-slots
slotAt: anIndex put: aSpurObjectOrOop
	"Our api is 1 based but the simulator is 0 based"

	| value |
	self numSlots >= anIndex ifFalse: [ SubscriptOutOfBounds signal ].	

	value := aSpurObjectOrOop isInteger 
		ifTrue:[ aSpurObjectOrOop ] 
		ifFalse: [ aSpurObjectOrOop address ].
		
	^ self simulator
		  storePointer: anIndex - 1
		  ofObject: self address
		  withValue: value