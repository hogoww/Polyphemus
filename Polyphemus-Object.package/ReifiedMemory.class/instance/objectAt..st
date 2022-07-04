accessing
objectAt: anAddress
	^ objects at: anAddress - baseAddress >> 3 ifAbsent: nil