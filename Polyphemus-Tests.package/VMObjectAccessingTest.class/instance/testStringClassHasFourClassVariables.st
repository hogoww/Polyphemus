tests-classVariables
testStringClassHasFourClassVariables
	| stringClass |
	stringClass := reifiedMemory reifiedMetaclass classNameObject oopClass oopClass.
	self assert: stringClass oopNumberOfClassVariables equals: 4