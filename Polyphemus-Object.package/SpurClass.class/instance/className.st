accessing
className 
"We assume this is a byteSymbol here"
	self numSlots < self slotIndexForClassName ifTrue: [ ^ 'Bad class' ].
	^ (self slotAt: self slotIndexForClassName) asLocalByteArray asString