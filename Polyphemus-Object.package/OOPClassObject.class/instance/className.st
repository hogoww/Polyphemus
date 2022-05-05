testing
className 
"We assume this is a byteSymbol here"
	self numSlots < self class slotIndexForClassName ifTrue: [ ^ 'Bad class' ].
	^ [ (self reifiedSlotAt: self class slotIndexForClassName) asString ]
		on: Error 
      do: [ (self reifiedSlotAt: self class slotIndexForClassName) asString , ' class']