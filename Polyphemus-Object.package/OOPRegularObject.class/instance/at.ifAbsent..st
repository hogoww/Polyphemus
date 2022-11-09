debugger
at: aString ifAbsent: aFullBlockClosure 
	"For now hack for the debugger may be Smalltalk needs its own reifications, i ginore the ifAbsent for now"
	
	self oopClassName = 'SystemDictionary' ifTrue: [^ (memory objectAt: memory specialObjectsOop) reifiedSlotAt: 17 ]
	