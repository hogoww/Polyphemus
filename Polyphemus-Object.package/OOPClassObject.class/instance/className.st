accessing
className
	"We assume this is a byteSymbol here"
	| slot |
	self numSlots < self class slotIndexForClassName ifTrue: [ ^ 'Bad class' ].
	slot := (self reifiedSlotAt: self class slotIndexForClassName).
	^ self isMetaclassOop
		ifFalse: [ slot asString ]
		ifTrue: [ slot className , ' class' ].
"		]
		on: Error 
      do: [ (self reifiedSlotAt: self class slotIndexForClassName) asString , ]"