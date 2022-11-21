tests-classVariables
testStringAllClassVariables
	self assert: (reifiedMemory reifiedStringClass oopAllClassVariables 
		anySatisfy: [ :aClassVariable | 
			(aClassVariable allIndexed difference: (String classVariableNamed: #CaseSensitiveOrder) value) isEmpty ])