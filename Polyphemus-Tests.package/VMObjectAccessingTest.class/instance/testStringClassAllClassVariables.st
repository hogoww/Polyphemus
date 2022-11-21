tests-classVariables
testStringClassAllClassVariables
	self assert: (reifiedMemory reifiedStringClass oopClassSide oopAllClassVariables 
		anySatisfy: [ :aClassVariable | 
			(aClassVariable allIndexed difference: (String classVariableNamed: #CaseSensitiveOrder) value) isEmpty ])