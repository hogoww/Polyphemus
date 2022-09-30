build
allocateInOldSpace
	| oop |	
	classIndex := self indexOfClass.

	oop := memory allocateSlotsInOldSpace: oopNumberOfSlots format: oopFormat classIndex: classIndex isPinned: oopIsPinned.
	oopIsImmutable ifTrue: [ memory setIsImmutableOf: oop to: true ].
	^ oop