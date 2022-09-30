build
allocateInNewSpace
	| oop |
	oopIsPinned ifTrue: [ self error: 'OOP cannot be pinned in when allocated in the new space.' ].
	oopIsRemembered ifTrue: [ self error: 'OOP cannot be remembered in when allocated in the new space.' ].
	
	classIndex := self indexOfClass.

	oop := memory allocateSlots: oopNumberOfSlots format: oopFormat classIndex: classIndex isPinned: false.
	oopIsImmutable ifTrue: [ memory setIsImmutableOf: oop to: true ].
	^ oop