initialization
testNumElementsShouldEqualsMemoryNumSlots
	self assert: sixtyFourbitLayoutObject numElements 
		equals: (memory numSlotsOf: sixtyFourbitLayoutObject address)