accessing
asLocalByteArray
	^ self memory memoryManager 
		copyFrom: object address value + self memory wordSize
		to: object address value + self oopByteSize - self padding.