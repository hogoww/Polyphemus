finding
findClassesNamed: someClassNames
	| foundClasses |
	foundClasses := OrderedDictionary new.
	self reifiedClassTable classesDo: [ :aClassOop |
		someClassNames ifEmpty: [ ^ foundClasses ].
		(someClassNames includes: aClassOop oopName)
			ifTrue: [
				someClassNames remove: aClassOop oopName.
				foundClasses at: aClassOop oopName put: aClassOop.
				].
		].
	someClassNames collect: [ :aClassOop | aClassOop -> self reifiedNilObject ] into: foundClasses.
	^ foundClasses