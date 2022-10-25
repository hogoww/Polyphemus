tests
testCompiledMethodIsDetectedAsCompiledMethod
	| classOop methodOop |
	classOop := reifiedMemory reifiedMetaclass.
	methodOop := classOop methodNamed: #slots:.
	self assert: methodOop isCompiledMethodOop