iterating
classOopsDo: aBlock
	classTablePages do: [ :aClassTablePage |
		aClassTablePage classOopsDo: aBlock
		]