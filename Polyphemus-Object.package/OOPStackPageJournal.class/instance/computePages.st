initialization
computePages

	memory interpreter stackPages pages do: [:stackpage |
		stackpages add: (OOPStackPage newFrom: stackpage on: memory)
		  ].
	1halt.
	