initialization
initializeClassesPresenter

	| classesObjects |
	reifiedMemory setUpStringClasses.
		classes := self newList.
	classesObjects := reifiedMemory select: [ :anOop | anOop isClassOop ].
	classes
		display: [ :class | class oopClassName ];
		displayIcon: [ :class | class systemIcon ];
		sortingBlock: [ :a :b | a oopClassName asString < b oopClassName asString ];
		contextMenu: self contextMenuForItems;
		items: classesObjects