recovering
fillBlankBetweenOop

	| abnormalEntity nextOop max supposedNextObjectAddress actualNextObjectAddress sizeBetweenSupposedAndActual |
	"The objects should be contiguous, freeChunk are also represented by objects any disconstinuity is abnormal.
Since we foundOop through roots we have great chance to miss entire object graph leaving blanks
"
	actualNextObjectAddress := lastKnownObject address.
	max := objectsArray size.

	[ 
	nextOop := self findObjectAfter: actualNextObjectAddress.
	(actualNextObjectAddress - baseAddress >> 3) < max and: [ nextOop isNotNil ] ] whileTrue: [ 
		
		supposedNextObjectAddress := memory objectAfter:
			                             actualNextObjectAddress.
		actualNextObjectAddress := nextOop address.
		sizeBetweenSupposedAndActual := actualNextObjectAddress
		                                - supposedNextObjectAddress.

		sizeBetweenSupposedAndActual = 0 ifFalse: [ 
			abnormalEntity := OOPAbnormalEntity
				                  newFor: supposedNextObjectAddress
				                  size: sizeBetweenSupposedAndActual
				                  on: self.
			self objectAt: abnormalEntity address put: abnormalEntity ] ]