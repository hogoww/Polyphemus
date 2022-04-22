test-event
testSpaceSignalsItsUpdates
	"If the Annoucement is not fired, the test fails"
	SystemAnnouncer uniqueInstance weak 
		when: MemorySpaceUpdate
		do: [ ^ SystemAnnouncer uniqueInstance unsubscribe: self ].
		
	newSpace updateMemorySpace.

	self fail.