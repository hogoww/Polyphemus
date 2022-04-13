testing
className 
"We assume this is a byteSymbol here"
	self numSlots <= self class slotIndexForClassName ifTrue: [ ^ 'Bad class' ].
	^ (self slotAt: self class slotIndexForClassName) asLocalByteArray asString
		"
		We only work on candle, therefore slotIndexForClassName and slotIndexForMetaclassSoleInstance are the same 
		on: Error 
      do: [ (self slotAt: self slotIndexForMetaclassSoleInstance ) asSpurClass className , ' class']"