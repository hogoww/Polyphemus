accessing
methodHeader	
	"Directly fetch method header from the VM rather than relying on slots
	That way we can tweak slots to not include bytecodes"
	^ OOPAbstractEntity newFor: (memory methodHeaderOf: address) image: image