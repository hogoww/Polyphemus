tests-classVariables
testStringClassAllClassVariables
	| stringClass |
	stringClass := reifiedMemory reifiedMetaclass classNameObject oopClass oopClass.
	self assert: stringClass oopAllClassVariables size equals: 4