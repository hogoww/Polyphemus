initialization
setUpTraitedMetaclassIndex

	[ traitedMetaclassIndex := (self preFindClassNamed: 'TraitedMetaclass') - 1 ] on: NotFound do: [ traitedMetaclassIndex := -1 ]