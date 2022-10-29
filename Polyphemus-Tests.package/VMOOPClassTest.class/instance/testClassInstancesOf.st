tests
testClassInstancesOf

	| classOop newObjectOop classObject |
	classOop := self newClassInOldSpaceWithSlots: 1.
	memory ensureBehaviorHash: classOop.
	
	newObjectOop := memory instantiateClass: classOop.
	self deny: newObjectOop isNil.
	
	reifiedMemory update.
	classObject := self reifyOop: classOop.
	
	self assert: classObject instancesOop equals: { newObjectOop }  