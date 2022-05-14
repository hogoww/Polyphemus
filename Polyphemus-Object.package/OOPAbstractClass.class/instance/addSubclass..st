adding
addSubclass: aSubclassOop
	subclasses ifNil: [ subclasses := OrderedCollection new ].
	subclasses add: aSubclassOop