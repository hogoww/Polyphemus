initialization
classesAsList

	| classesObjects |
	classOrder label: self classHierarchyLabel.
	reifiedMemory setUpStringClasses.
	classesList := self newList.
	classesObjects := reifiedMemory select: [ :anOop | anOop isClassOop ].
	classesList
		display: [ :class | class oopClassName ];
		displayIcon: [ :class | class systemIcon ];
		sortingBlock: [ :a :b | a oopClassName asString < b oopClassName asString ];
		contextMenu: (self contextMenuForItems: classesList);
		items: classesObjects