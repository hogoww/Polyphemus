build
checkClassAttributes
	oopFormat = 1 ifFalse: [ OOPInvalidFormat signal: 'Class OOPs can only have format 1 AFAIK' ].
	oopNumberOfSlots < 3 ifTrue: [ oopNumberOfSlots := 3 + oopNumberOfSlots ].
	
