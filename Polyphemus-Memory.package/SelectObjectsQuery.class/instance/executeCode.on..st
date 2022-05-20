execution
executeCode: aBlock on: aMemoryPresenter
	| selection |
	selection := aMemoryPresenter scopedOop select: aBlock.
	aMemoryPresenter updateColorProviderTo: (BasicSelectionColorProvider forSelection: selection).