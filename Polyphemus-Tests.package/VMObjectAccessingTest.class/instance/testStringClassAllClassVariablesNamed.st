tests-classVariables
testStringClassAllClassVariablesNamed
	| stringClass |
	stringClass := reifiedMemory reifiedMetaclass classNameObject oopClass oopClass.
	self assert: (stringClass oopClassVariableNamed: #AsciiOrder) oopClassName equals: #PCByteArray