initialization
setUpCompiledMethodClass
	"The compiled Method class should be at index 17, however this is not enforced by the VM anymore."
	| spl |
	spl := self reifyOop: memory specialObjectsOop.
	compiledMethodClass := spl slotAt: 17.