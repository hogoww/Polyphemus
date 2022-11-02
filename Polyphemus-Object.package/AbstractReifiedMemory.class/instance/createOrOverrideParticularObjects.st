initialization
createOrOverrideParticularObjects
	| classTableObject |
	"We recreate a few specific objects with the right class
	This is done after the initialization of all objects because we use an OrderedDictionary"
	self objectAt: memory rememberedSetObj put: (OOPRememberSetObject on: memory rememberedSetObj memory: self).
	
	classTableObject := OOPClassTableObject on: memory classTableRootObj memory: self.
	self objectAt: memory classTableRootObj put: classTableObject.

	classTableObject allClassTablePages do: [ :aClassTablePage |
		| classTablePage |
		classTablePage := OOPClassTablePageObject on: aClassTablePage address memory: self.
		classTableObject registerPage: classTablePage. 
		self objectAt: aClassTablePage address put: classTablePage ].
	
	self overrideClassOops.
	objectHandlers add: OOPClassClassSideObject.
	objectHandlers add: OOPClassInstanceSideObject.
	
	metaclassForTraitIndex ifNil:[ ^ self ].
	
	objectHandlers addAll: OOPClassClassSideObject subclasses.
	objectHandlers addAll: OOPClassInstanceSideObject subclasses.
