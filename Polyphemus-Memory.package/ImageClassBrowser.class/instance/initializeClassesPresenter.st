initialization
initializeClassesPresenter

	classes := self newList.
	classes
		display: [ :class | class className ];
		displayIcon: [ :class | class systemIcon ];
		sortingBlock: [ :a :b | a className asString < b className asString ];
		items: (reifiedMemory select: [ :anOop | anOop isClassOop ])