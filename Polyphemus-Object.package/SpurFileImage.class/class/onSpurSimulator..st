as yet unclassified
onSpurSimulator: aSpur32BitMMLESimulator
	| memory nilOop |
	nilOop := aSpur32BitMMLESimulator nilObject. 
	memory := aSpur32BitMMLESimulator memory memoryObject.
	"memory := fullMemory  copyFrom: nilOop + 1 to: fullMemory size."
	  
	^ self basicNew
		memory: memory;
		headerSize: nilOop - aSpur32BitMMLESimulator memory initialAddress - 1;
		specialObjectsArrayOop: aSpur32BitMMLESimulator specialObjectsOop - aSpur32BitMMLESimulator memory initialAddress;
		oldBaseAddress: nilOop - aSpur32BitMMLESimulator memory initialAddress;
		hiddenRoots: aSpur32BitMMLESimulator hiddenRootsObject - aSpur32BitMMLESimulator memory initialAddress;
		format: 64;
		yourself