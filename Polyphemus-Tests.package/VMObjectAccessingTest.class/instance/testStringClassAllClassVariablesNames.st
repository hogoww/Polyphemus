tests-classVariables
testStringClassAllClassVariablesNames
	self assert: (self stringClass oopAllClassVariablesNames includes: #AsciiOrder)