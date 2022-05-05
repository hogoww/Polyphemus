accessing
allIndexed
	^ (1 to: self numBytes) collect: [ :anIndex | self indexedAt: anIndex ]