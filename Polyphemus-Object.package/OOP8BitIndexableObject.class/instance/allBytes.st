accessing
allBytes
	^ (1 to: self numBytes) collect: [ :anIndex | self byteAt: anIndex ]