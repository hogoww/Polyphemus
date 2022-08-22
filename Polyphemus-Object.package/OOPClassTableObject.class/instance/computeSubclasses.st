computing
computeSubclasses
	memory allClassesOop do: [ :aClass | | superclass |
		superclass := aClass oopSuperclass.
		superclass isNotNilOop ifTrue: [
			superclass addSubclass: aClass
		]]