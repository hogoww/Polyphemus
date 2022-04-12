as yet unclassified
onMyself
| memory nilOop VM|
	"nilOop := aSpur32BitMMLESimulator nilObject. 
	memory := aSpur32BitMMLESimulator memory asByteArray.
	memory := fullMemory  copyFrom: nilOop + 1 to: fullMemory size."
	VM = VirtualMachine new.
	  
	^ self basicNew	
		memory: memory;
		version: VM parameterAt: 41;
		headerSize: nilOop;
		specialObjectsArrayOop: VM specialObjectsOop;
		oldBaseAddress: nilOop;
		yourself