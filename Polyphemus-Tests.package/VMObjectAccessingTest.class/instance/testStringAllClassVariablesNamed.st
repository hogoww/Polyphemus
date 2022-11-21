tests-classVariables
testStringAllClassVariablesNamed
	self assert: ((reifiedMemory reifiedStringClass oopClassVariableNamed: #AsciiOrder) oopClassName last: 9) equals: #ByteArray