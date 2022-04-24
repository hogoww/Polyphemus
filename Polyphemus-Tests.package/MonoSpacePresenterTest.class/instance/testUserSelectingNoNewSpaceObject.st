running
testUserSelectingNoNewSpaceObject
	| oop |
	oop := self newZeroSizedObject.
	self updateSpaces.
	
	newSpace queryWidget querySelector selectItem: #Selecting.
	newSpace queryWidget queryInput text: '[ :aBox | false ]'.
	
	self deny: (newSpace memoryPresenter oopForAddress: oop) paint equals: Color lightGray.
	
	newSpace queryWidget queryInput adapter 
		keyDown: Character cr
		shift: false 
		meta: false
		control: false
		option: false.
	
	self assert: (newSpace memoryPresenter oopForAddress: oop) paint 
		equals: newSpace memoryPresenter colorProvider colorForNonSelectedObject 