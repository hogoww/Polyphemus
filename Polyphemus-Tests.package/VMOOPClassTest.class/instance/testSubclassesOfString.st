tests
testSubclassesOfString

	| stringClass stringSuperClass |
	stringClass := self reifyOop: memory classString.
	stringSuperClass := stringClass oopSuperclass.
	
	self assert: ((stringSuperClass oopSubclasses) includes: stringClass)