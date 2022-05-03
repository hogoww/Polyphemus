test
testisHiddenOop
	| oop |
	oop := self reifyOop: memory classTableRootObj.
	
	self assert: oop isHiddenOop