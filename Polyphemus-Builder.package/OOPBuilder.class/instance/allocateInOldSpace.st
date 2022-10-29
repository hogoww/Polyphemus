build
allocateInOldSpace
	classIndex := self indexOfClass.

	^ memory allocateSlotsInOldSpace: oopNumberOfSlots format: oopFormat classIndex: classIndex isPinned: oopIsPinned