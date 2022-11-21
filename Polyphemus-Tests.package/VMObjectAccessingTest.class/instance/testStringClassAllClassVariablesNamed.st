tests-classVariables
testStringClassAllClassVariablesNamed
	self assert: ((reifiedMemory reifiedStringClass oopClassVariableNamed: #AsciiOrder) oopClassName last: 9) equals: #ByteArray