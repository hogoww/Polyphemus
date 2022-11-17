tests-classVariables
testStringAllClassVariablesNamed
	| stringClass |
	stringClass := reifiedMemory reifiedMetaclass classNameObject oopClass.
	self assert: (stringClass classVariableNamed: #AsciiOrder) oopClassName equals: #PCByteArray