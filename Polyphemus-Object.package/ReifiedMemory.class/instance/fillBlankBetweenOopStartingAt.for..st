accessing
fillBlankBetweenOopStartingAt: lastReifiedObject for: foundOop

	"Computing the first blank"

	| supposedBuggedAddress abnormalObjectSize abnormalEntity abnormalObjects |
	foundOop ifEmpty: [ ^self ].
	abnormalObjects := OrderedCollection new.
	supposedBuggedAddress := memory objectAfter:
		                         lastReifiedObject address.
	"This supposes addresses increments"
	abnormalObjectSize := (foundOop first address) - supposedBuggedAddress.
	abnormalObjectSize = 0
		ifTrue: [ self error: 'We should have a blank else everything fine' ]
		ifFalse: [ 
			abnormalEntity := OOPAbnormalEntity
				                 newFor: supposedBuggedAddress
				                 size: abnormalObjectSize
				                 on: self.
				abnormalObjects add: abnormalEntity].
	"The objects should be contiguous, freeChunk are also represented by objects any disconstinuity is abnormal.
Since we foundOop through roots we have great chance to miss entire object graph leaving blanks
" 
	foundOop doWithIndex: [ :anOop :anIndex | 
		| nextOop supposedNextObjectAddress sizeBetweenSuppoedAndActual actualNextObjectAddress |
		(foundOop last = anOop) ifFalse:[ .
		nextOop := foundOop at: anIndex + 1.
		supposedNextObjectAddress := memory objectAfter: anOop address.
		actualNextObjectAddress := nextOop address.
		sizeBetweenSuppoedAndActual := actualNextObjectAddress - supposedNextObjectAddress.
		
		sizeBetweenSuppoedAndActual = 0 ifFalse: [ 
			abnormalEntity := OOPAbnormalEntity
				                 newFor: supposedNextObjectAddress
				                 size: sizeBetweenSuppoedAndActual
				                 on: self.
				abnormalObjects add: abnormalEntity ] ]].
	
		foundOop addAll: abnormalObjects.
		foundOop sort.