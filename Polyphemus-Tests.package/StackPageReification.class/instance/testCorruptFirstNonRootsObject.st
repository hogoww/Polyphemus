tests
testCorruptFirstNonRootsObject


	| initialContext methodReturning |
	reifiedMemory := PreReifiedMemory on: memory.
	initialContext := (reifiedMemory select: [:oop | oop oopClassName = 'PCMethodContext' ]) anyOne.
	reifiedMemory interpreter interpretWhile: [ interpreter method = initialContext method address ].
	1halt.
	
	stackPages := OOPStackPageJournal newWith: reifiedMemory.
	
	self assert: reifiedMemory flagErrorObjects.
	self assert: reifiedMemory numberOfElements equals: 2473.