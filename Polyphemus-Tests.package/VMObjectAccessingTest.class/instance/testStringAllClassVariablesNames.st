tests-classVariables
testStringAllClassVariablesNames
	| stringClass |
	stringClass := reifiedMemory reifiedMetaclass classNameObject oopClass.
	self assert: (stringClass oopAllClassVariablesNames includes: #AsciiOrder)