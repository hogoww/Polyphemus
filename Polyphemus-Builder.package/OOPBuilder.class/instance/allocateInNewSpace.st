build
allocateInNewSpace
	oopIsPinned ifTrue: [ self error: 'OOP cannot be pinned in when allocated in the new space.' ].
	oopIsRemembered ifTrue: [ self error: 'OOP cannot be remembered in when allocated in the new space.' ].
	
	classIndex := self indexOfClass.

	^ memory allocateSlots: oopNumberOfSlots format: oopFormat classIndex: classIndex isPinned: false.