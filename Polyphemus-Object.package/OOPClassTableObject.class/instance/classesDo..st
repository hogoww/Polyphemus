iterating
classesDo: aBlock
	classTablePages do: [ :aClassTablePage |
		aClassTablePage classesDo: aBlock
		]