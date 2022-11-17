tests-classVariables
testStringHasFourClassVariables
	| stringClass |
	stringClass := reifiedMemory reifiedMetaclass classNameObject oopClass.
	self assert: stringClass oopNumberOfClassVariables equals: 4