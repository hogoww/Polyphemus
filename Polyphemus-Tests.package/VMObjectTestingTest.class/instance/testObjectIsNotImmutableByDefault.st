test
testObjectIsNotImmutableByDefault
	| object |
	object := self objectForOop: self newZeroSizedObject.
	
	self deny: object isImmutableOop