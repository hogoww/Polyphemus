tests-classVariables
testStringAndStringClassHaveAsManyClassVariables
	"Since one relies on the other, this is a very weak test case"
	self assert: self stringClass oopNumberOfClassVariables isInteger.
	self assert: self stringClass oopNumberOfClassVariables equals: self stringClass oopClassSide oopNumberOfClassVariables