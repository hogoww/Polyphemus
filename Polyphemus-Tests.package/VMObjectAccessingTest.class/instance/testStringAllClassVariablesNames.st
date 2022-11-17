tests-classVariables
testStringAllClassVariablesNames
	self assert: (self stringClass oopAllClassVariablesNames includes: #AsciiOrder)