tests-classVariables
testStringClassAllClassVariablesNamed
	self assert: ((self stringClass oopClassVariableNamed: #AsciiOrder) oopClassName last: 9) equals: #ByteArray