execution
executeCode: aBlock on: aMemoryPresenter
	| selection |
	selection := aMemoryPresenter allNodes select: aBlock thenCollect: [ :aBox | aBox model ].
	selection inspect