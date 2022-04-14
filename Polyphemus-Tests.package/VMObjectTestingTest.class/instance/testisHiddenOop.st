test
testisHiddenOop
	| oop |
	oop := self objectForOop: memory classTableRootObj.
	
	self assert: oop isHiddenOop