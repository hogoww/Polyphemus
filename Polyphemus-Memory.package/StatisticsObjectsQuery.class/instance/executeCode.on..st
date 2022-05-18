execution
executeCode: aBlock on: aMemoryPresenter
	| selection |
	selection := aMemoryPresenter scopedOop collect: aBlock.
	selection inspect