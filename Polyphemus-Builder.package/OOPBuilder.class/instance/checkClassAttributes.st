build
checkClassAttributes
	oopNumberOfSlots < 3 ifTrue: [ self error: 'Can''t instanciate classes without at least 3 slots' ]