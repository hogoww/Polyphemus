initialization
initializeClassesPresenter

	| classesObjects |
	classes := self newList.
	classesObjects := (reifiedMemory select: [ :anOop | anOop isClassOop ]).
	classes
		display: [ :class | class oopClassName ];
		displayIcon: [ :class | class systemIcon ];
		sortingBlock: [ :a :b | a oopClassName asString < b oopClassName asString ];
		items: classesObjects