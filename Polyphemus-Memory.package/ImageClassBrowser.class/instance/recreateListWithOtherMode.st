updating
recreateListWithOtherMode
	classOrder label = self classHierarchyLabel
		ifFalse: [ self classesAsList ]
		ifTrue: [ self classesAsTree ].
	self layout: self defaultLayout.
