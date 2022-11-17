tests-classVariables
testStringClassAllClassVariablesNamed
	| stringClass |
	stringClass := reifiedMemory reifiedMetaclass classNameObject oopClass oopClass.
	self assert: (stringClass classVariableNamed: #AsciiOrder) oopClassName equals: #PCByteArray