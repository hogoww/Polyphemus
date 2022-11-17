tests-classVariables
testStringClassAllClassVariables
	self assert: (self stringClass oopClassSide oopAllClassVariables 
		anySatisfy: [ :aClassVariable | 
			(aClassVariable allIndexed difference: (String classVariableNamed: #CaseSensitiveOrder) value) isEmpty ])