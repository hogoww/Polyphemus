iterating
classesDo: aBlock
	classTablePages do: [ :aClassTablePage |
		aClassTablePage allClassesOop do: [ :aClass | aBlock value: aClass ]
		]