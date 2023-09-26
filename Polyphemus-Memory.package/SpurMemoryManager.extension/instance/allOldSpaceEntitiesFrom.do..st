*Polyphemus-Memory
allOldSpaceEntitiesFrom: initialObject do: aBlock
	<inline: true>
	| prevObj prevPrevObj objOop |
	self assert: (self isOldObject: initialObject).
	prevPrevObj := prevObj := nil.
	objOop := initialObject.
	[self assert: objOop \\ self allocationUnit = 0.
	 self oop: objOop isLessThan: self endOfMemory] whileTrue:
		[(self long64At: objOop) ~= 0 ifFalse: [OopIsNotAnObject new 
		oop: objOop;
		signal].
		 aBlock value: objOop.
		 prevPrevObj := prevObj.
		 prevObj := objOop.
		 objOop := self objectAfter: objOop limit: self endOfMemory].
	self touch: prevPrevObj.
	self touch: prevObj