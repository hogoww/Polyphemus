meta
metaclassOop
	
	"It may need to be cached in an IV.
	We take the class Array and send it class class to find the metaclass.
	Since Array is required by the vm we should not have a problem.
	"
	| arrayClass |
	arrayClass := self class newFor: (memory classAtIndex: (memory arrayClassIndexPun)) memory: memory.
	^arrayClass oopClass oopClass