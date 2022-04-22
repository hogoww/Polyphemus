accessing
connectPresenters

	SystemAnnouncer uniqueInstance weak 
		when: MemorySpaceUpdate
		do: [ legend updateWithColorProvider: memoryPresenter ].

	SystemAnnouncer uniqueInstance weak 
		when: QueryIsReady
		do: [ memoryPresenter executeQuery ].
