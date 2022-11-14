tests
testWideStringOopIsDetectedAsWideString
	| wideString |
	wideString := reifiedMemory objects select: #isWideStringOop.
	self assert: wideString size equals: 1