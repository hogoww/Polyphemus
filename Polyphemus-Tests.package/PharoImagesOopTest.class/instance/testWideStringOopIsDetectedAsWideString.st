tests
testWideStringOopIsDetectedAsWideString
	| wideString |
	wideString := reifiedMemory reifiedStringClass oopClassVariableNamed: #UppercasingTable.
	self assert: wideString isWideStringOop