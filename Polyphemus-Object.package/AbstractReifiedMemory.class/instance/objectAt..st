accessing
objectAt: anAddress
	^ objectsArray at: anAddress - baseAddress >> 3 ifAbsent: nil