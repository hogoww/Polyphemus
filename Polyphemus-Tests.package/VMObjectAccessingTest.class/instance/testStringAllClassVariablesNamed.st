tests-classVariables
testStringAllClassVariablesNamed
	| stringClass |
	stringClass := reifiedMemory reifiedMetaclass classNameObject oopClass.
	self assert: (stringClass oopClassVariableNamed: #AsciiOrder) oopClassName equals: #PCByteArray