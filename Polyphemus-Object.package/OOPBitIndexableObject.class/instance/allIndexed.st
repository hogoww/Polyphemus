accessing
allIndexed
	^ (1 to: self oopNumberOfIndexed) collect: [ :anIndex | self indexedAt: anIndex ]