running
testUserScalling
	| oop |
	oop := self newZeroSizedObject.
	self updateSpaces.
	
	newSpace queryWidget querySelector selectItem: #Scaling.
	newSpace queryWidget currentQuery.
	newSpace queryWidget queryInput text: '[ :aBox | aBox size: 1 ]'.
	
	self deny: (newSpace memoryPresenter oopForAddress: oop) paint equals: Color lightGray.
	
	newSpace queryWidget queryInput adapter 
		keyDown: Character cr
		shift: false 
		meta: false
		control: false
		option: false.
	
	self assert: (newSpace memoryPresenter oopForAddress: oop) extent equals: 1.0 @ 1.0.