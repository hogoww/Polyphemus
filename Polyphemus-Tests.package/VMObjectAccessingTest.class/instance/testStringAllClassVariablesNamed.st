tests-classVariables
testStringAllClassVariablesNamed
	self assert: ((self stringClass oopClassVariableNamed: #AsciiOrder) oopClassName last: 9) equals: #ByteArray