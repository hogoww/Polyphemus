testing
className 
"We assume this is a byteSymbol here"
	self numSlots < self class slotIndexForClassName ifTrue: [ ^ 'Bad class' ].
	^ [ (self slotAt: self class slotIndexForClassName) asLocalByteArray asString ]
		on: Error 
      do: [ (self slotAt: self class slotIndexForClassName) asString , ' class']