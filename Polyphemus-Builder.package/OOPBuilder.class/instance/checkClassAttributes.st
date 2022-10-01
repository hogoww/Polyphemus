build
checkClassAttributes
	oopNumberOfSlots < 3 ifTrue: [ oopNumberOfSlots := 3 + oopNumberOfSlots ].

