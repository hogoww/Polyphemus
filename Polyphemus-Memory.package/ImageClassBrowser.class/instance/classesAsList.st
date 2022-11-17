displayMode
classesAsList

	| classesObjects |
	classOrder label: self classHierarchyLabel.
	reifiedMemory setUpStringClasses.
	classesList := self newList.
	classesObjects := reifiedMemory reifiedClassTable allClassesOop.
	classesList
		display: [ :class | class printString ];
		displayIcon: [ :class | class iconNamed: class systemIconName ];
		sortingBlock: [ :a :b | 
			a printString < b printString ];
		contextMenu: (self contextMenuForItems: classesList);
		items: classesObjects