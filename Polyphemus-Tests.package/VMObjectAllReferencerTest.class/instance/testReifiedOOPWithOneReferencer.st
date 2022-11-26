tests-allReferencers
testReifiedOOPWithOneReferencer
	| oop slot |
	
	"AllReferencer works with reified memory"
	oop := self reifyOop: (self newOldSpaceObjectWithSlots: 1).
	slot := self reifyOop: (self newOldSpaceObjectWithSlots: 0).
	oop slotAt: 1 put: slot.
	reifiedMemory update.
	
	self assert: slot allReferencers size equals: 1.
	self assert: slot allReferencers anyOne equals: oop