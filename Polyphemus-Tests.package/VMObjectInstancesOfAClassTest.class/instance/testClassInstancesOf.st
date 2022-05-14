tests
testClassInstancesOf

	| classOop newObjectOop classObject classTableObject classPage |
	classOop := self newClassInOldSpaceWithSlots: 1.
	classTableObject := self reifyOop: memory classTableRootObj.
	classPage := classTableObject reifiedSlotAt: 2.
	classPage slotAt: 1024 put: classOop.

	newObjectOop := memory instantiateClass: classOop.
	self deny: newObjectOop isNil.
	classObject := self reifyOop: classOop.
	reifiedMemory update.
	
	self assert: classObject instancesOop keys equals: { newObjectOop }  