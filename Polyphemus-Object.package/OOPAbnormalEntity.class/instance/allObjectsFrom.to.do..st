iterating
allObjectsFrom: initialObject to: finalObject do: aBlock

	| prevObj prevPrevObj objOop |
	prevPrevObj := prevObj := nil.
	objOop := initialObject.
	[self assert: objOop \\ memory allocationUnit = 0.
	 memory oop: objOop isLessThanOrEqualTo: finalObject] whileTrue:
		[self assert: (memory long64At: objOop) ~= 0.
		 aBlock value: objOop.
		 prevPrevObj := prevObj.
		 prevObj := objOop.
		 objOop := memory objectAfter: objOop limit: memory endOfMemory].
	memory touch: prevPrevObj.
	memory touch: prevObj