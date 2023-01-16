accessing
getObjectSlotNames: aClassOop
	
	"Class sides in candle have only 4 slots for some reasons"
	aClassOop isClassSideOop ifTrue:[ ^ OrderedCollection new ].
	^ (aClassOop reifiedSlotAt: 5) allReifiedSlots asOrderedCollection