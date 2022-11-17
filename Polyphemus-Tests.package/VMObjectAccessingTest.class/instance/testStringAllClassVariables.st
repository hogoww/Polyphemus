tests-classVariables
testStringAllClassVariables
	| stringClass |
	stringClass := reifiedMemory reifiedMetaclass classNameObject oopClass.
	self assert: stringClass oopAllClassVariables size equals: 4