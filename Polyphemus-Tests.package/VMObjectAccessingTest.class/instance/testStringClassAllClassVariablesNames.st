tests-classVariables
testStringClassAllClassVariablesNames
	| stringClass |
	stringClass := reifiedMemory reifiedMetaclass classNameObject oopClass oopClass.
	self assert: (stringClass oopAllClassVariablesNames includes: #AsciiOrder)