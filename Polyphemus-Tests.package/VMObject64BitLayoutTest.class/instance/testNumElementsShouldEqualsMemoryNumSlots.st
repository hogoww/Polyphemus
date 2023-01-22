tests
testNumElementsShouldEqualsMemoryNumSlots
	self assert: sixtyFourbitLayoutObject oopNumberOfIndexed 
		equals: (memory numSlotsOf: sixtyFourbitLayoutObject address)