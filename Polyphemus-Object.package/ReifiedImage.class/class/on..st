instance creation
on: anImage
	^ self new
		image: anImage;
		initializeObjectsFromMemory;
		yourself