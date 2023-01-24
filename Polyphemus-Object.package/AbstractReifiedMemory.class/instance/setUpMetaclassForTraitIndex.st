initialization
setUpMetaclassForTraitIndex

	[ metaclassForTraitIndex := (self preFindClassNamed: 'MetaclassForTraits') - 1 ] on: NotFound do: [ metaclassForTraitIndex := -1 ]