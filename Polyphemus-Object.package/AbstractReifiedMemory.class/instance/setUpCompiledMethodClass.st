initialization
setUpCompiledMethodClass
	"The compiled Method class should be at index 17, however this is not enforced by the VM anymore."
	| compiledMethodClass |
	compiledMethodClass := memory fetchPointer: 16 ofObject: memory specialObjectsOop.
	compiledMethodClassIndex := memory rawHashBitsOf: compiledMethodClass 