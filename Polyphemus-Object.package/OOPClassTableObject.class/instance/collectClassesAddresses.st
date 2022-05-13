enumerating
collectClassesAddresses
	^ classTablePages flatCollect: [ :aClassTablePage |
		aClassTablePage allClassAddresses
		]