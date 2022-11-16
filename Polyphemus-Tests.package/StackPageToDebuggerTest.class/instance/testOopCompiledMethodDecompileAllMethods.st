tests
testOopCompiledMethodDecompileAllMethods

	| methods |
	methods := reifiedMemory select: [ :oop | oop isCompiledMethodOop ].
	methods do: [ :method | method decompile ].

	self assert: methods size equals: 1