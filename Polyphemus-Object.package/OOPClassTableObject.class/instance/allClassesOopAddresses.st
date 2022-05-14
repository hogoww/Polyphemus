enumerating
allClassesOopAddresses
	^ (classTablePages flatCollect: [ :aClassTablePage |
		aClassTablePage allClassesOopAddresses
		]) asSet