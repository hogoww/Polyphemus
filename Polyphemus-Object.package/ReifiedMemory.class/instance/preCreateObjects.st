initialization
preCreateObjects
	| classTableObject classTablePages |
	classTableObject := (OOPClassTableObject on: memory classTableRootObj memory: self).
	
	self objectAt: memory classTableRootObj put: classTableObject.

	classTablePages := classTableObject allSlots reject: [ :aSlot | aSlot isNilOop ].
	classTablePages do: [ :aClassTablePage | | classTablePage |
		"At this point, the class table page is missidentified as a regular object"
		classTablePage := OOPClassTablePageObject on: aClassTablePage address memory: self.
		self objectAt: aClassTablePage address put: classTablePage ]