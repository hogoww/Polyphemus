accessing
connectPresenters

	SystemAnnouncer uniqueInstance weak 
		when: MemorySpaceUpdate
		do: [ legend updateForMemory: memoryPresenter ].

	SystemAnnouncer uniqueInstance weak 
		when: QueryIsReady
		do: [ memoryPresenter executeQuery ].
