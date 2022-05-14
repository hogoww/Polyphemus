enumerating
allClassesOop
	^ (classTablePages flatCollect: [ :aClassTablePage | aClassTablePage allClassesOop ]) asSet