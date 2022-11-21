tests-classVariables
testStringAndStringClassHaveAsManyClassVariables
	"Since one relies on the other, this is a very weak test case"
	self assert: reifiedMemory reifiedStringClass oopNumberOfClassVariables isInteger.
	self assert: reifiedMemory reifiedStringClass oopNumberOfClassVariables 
		equals: reifiedMemory reifiedStringClass oopClassSide oopNumberOfClassVariables