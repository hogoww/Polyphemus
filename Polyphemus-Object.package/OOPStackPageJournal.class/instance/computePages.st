initialization
computePages

	memory interpreter stackPages pages do: [:stackpage |
		stackpages add: (OOPAbstractStackPage newFrom: stackpage on: memory)
		  ].
	
	mostRecentlyUsedPage := (stackpages select: [:page | page associatedPage = interpreter stackPages mostRecentlyUsedPage]) first.
	leastRecentlyUsedPage  := stackpages last.