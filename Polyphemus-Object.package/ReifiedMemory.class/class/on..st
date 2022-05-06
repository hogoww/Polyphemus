instance creation
on: aMemory
	^ self new
		memory: aMemory;
		snapshotMemory;
		yourself