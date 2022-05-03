test
testObjectIsNotImmutableByDefault
	| object |
	object := self reifyOop: self newZeroSizedObject.
	
	self deny: object isImmutableOop