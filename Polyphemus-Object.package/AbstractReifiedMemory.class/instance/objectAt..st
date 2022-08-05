accessing
objectAt: anAddress

	^ objectsArray at: (self indexForAddress: anAddress) ifAbsent: nil