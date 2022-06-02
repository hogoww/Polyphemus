accessing
fillBlankBetweenOopStartingAt: lastReifiedObject for: foundOop

	"Computing the first blank"

	| supposedBuggedAddress anormalObjectSize anormalEntity anormalObjects |
	foundOop ifEmpty: [ ^self ].
	anormalObjects := OrderedCollection new.
	supposedBuggedAddress := memory objectAfter:
		                         lastReifiedObject address.
	"This supposes addresses increments"
	anormalObjectSize := (foundOop first address) - supposedBuggedAddress.
	anormalObjectSize = 0
		ifTrue: [ self error: 'We should have a blank else everything fine' ]
		ifFalse: [ 
			anormalEntity := OOPAnormalEntity
				                 newFor: supposedBuggedAddress
				                 size: anormalObjectSize
				                 on: self.
				anormalObjects add: anormalEntity].
	"The objects should be contiguous, freeChunk are also represented by objects any disconstinuity is abnormal.
Since we foundOop through roots we have great chance to miss entire object graph leaving blanks
" 
	foundOop doWithIndex: [ :anOop :anIndex | 
		| nextOop supposedNextObjectAddress sizeBetweenSuppoedAndActual actualNextObjectAddress |
		(foundOop last = anOop) ifFalse:[ .
		nextOop := foundOop at: anIndex + 1.
		supposedNextObjectAddress := memory objectAfter: anOop.
		actualNextObjectAddress := nextOop address.
		sizeBetweenSuppoedAndActual := supposedNextObjectAddress
		                               - actualNextObjectAddress.
		
		sizeBetweenSuppoedAndActual = 0 ifFalse: [ 
			anormalEntity := OOPAnormalEntity
				                 newFor: supposedNextObjectAddress
				                 size: sizeBetweenSuppoedAndActual
				                 on: self.
				anormalObjects add: anormalEntity ] ]].
	
		foundOop addAll: anormalObjects.
		foundOop sort.