tests
testCompiledBlocklIsDetectedAsCompiledBlock
	| blockOop methodOop |
	methodOop := reifiedMemory reifiedMetaclass methodNamed: #slots:.
	blockOop := methodOop allLiterals detect: [ :l | l isCompiledBlockOop ].
	self assert: blockOop isCompiledBlockOop