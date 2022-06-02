instance creation
newFor: supposedBuggedAddress size: anormalObjectSize on: aMemory

	| instance |
	instance := self new.
	instance
		address: supposedBuggedAddress;
		size: anormalObjectSize;
		memory: aMemory.
	^ instance