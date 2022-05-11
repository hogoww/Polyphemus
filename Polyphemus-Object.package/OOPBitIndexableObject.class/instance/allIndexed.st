accessing
allIndexed
	^ (1 to: self numElements) collect: [ :anIndex | self indexedAt: anIndex ]