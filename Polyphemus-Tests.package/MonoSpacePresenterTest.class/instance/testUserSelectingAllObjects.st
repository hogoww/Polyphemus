running
testUserSelectingAllObjects
	oldSpace queryWidget querySelector selectItem: #Selecting.
	oldSpace queryWidget queryInput text: '[ :aBox | true ]'.

	self deny: oldSpace memoryPresenter allNodes size equals: 0.
	oldSpace memoryPresenter allNodes do: [ :aBox | 
		self deny: aBox paint 
			equals: BasicSelectionColorProvider new colorForSelectedObject ].
			
	oldSpace queryWidget queryInput adapter 
		keyDown: Character cr
		shift: false 
		meta: false
		control: false
		option: false.

	self deny: oldSpace memoryPresenter allNodes size equals: 0.
	oldSpace memoryPresenter allNodes do: [ :aBox |
		self assert: aBox paint 
			equals: oldSpace memoryPresenter colorProvider colorForSelectedObject ].