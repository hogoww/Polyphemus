test
testIsContextOop
	| oop |
	oop := self reifyOop: (self newObjectWithSlots: 0 classIndex: ClassMethodContextCompactIndex).	
	self assert: oop isContextOop