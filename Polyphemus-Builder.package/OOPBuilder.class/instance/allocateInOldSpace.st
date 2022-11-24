build
allocateInOldSpace
	^ memory allocateSlotsInOldSpace: oopNumberOfSlots format: oopFormat classIndex: self indexOfClass isPinned: oopIsPinned