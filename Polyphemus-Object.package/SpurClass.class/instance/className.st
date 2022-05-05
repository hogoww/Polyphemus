accessing
className 
"We assume this is a byteSymbol here"
	self numSlots <= self slotIndexForClassName ifTrue: [ ^ 'Bad class' ].
	^ (self reifiedSlotAt: self slotIndexForClassName) asLocalByteArray asString
		"
		We only work on candle, therefore slotIndexForClassName and slotIndexForMetaclassSoleInstance are the same 
		on: Error 
      do: [ (self slotAt: self slotIndexForMetaclassSoleInstance ) asSpurClass className , ' class']"