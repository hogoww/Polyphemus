tests-classVariables
testStringAllClassVariables
	self assert: (self stringClass oopAllClassVariables 
		anySatisfy: [ :aClassVariable | 
			(aClassVariable allIndexed difference: (String classVariableNamed: #CaseSensitiveOrder) value) isEmpty ])