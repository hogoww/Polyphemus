tests-allReferencers
testSpurObjectWithOneReferencer
	| oop slot |
	
	"AllReferencer works with reified memory"
	oop := self reifyOop: (self newOldSpaceObjectWithSlots: 1).
	reifiedMemory objectAt: oop address put: oop.
	slot := self reifyOop: (self newOldSpaceObjectWithSlots: 0).
	oop slotAt: 1 put: slot. 
	reifiedMemory objectAt: slot address put: slot.
	reifiedMemory createCompressedVersion.
	
	self assert: slot allReferencers size equals: 1.
	self assert: slot allReferencers anyOne equals: oop