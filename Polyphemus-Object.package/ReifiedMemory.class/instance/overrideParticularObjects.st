initialization
overrideParticularObjects
	| classTableObject classTablePages |
	"We recreate a few specific objects with the right class
	This is done after the initialization of all objects because we use an OrderedDictionary"
	
	classTableObject := (OOPClassTableObject on: memory classTableRootObj memory: self).
	
	self objectAt: memory classTableRootObj put: classTableObject.

	classTablePages := classTableObject allClassTablePages.
	classTablePages do: [ :aClassTablePage | | classTablePage |
		"At this point, the class table page is missidentified as a regular object"
		classTablePage := OOPClassTablePageObject on: aClassTablePage address memory: self.
		classTableObject registerPage: classTablePage. 
		self objectAt: aClassTablePage address put: classTablePage ].