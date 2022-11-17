initialization
setUpMetaclassForTraitIndex

	[ metaclassForTraitIndex := self preFindClassNamed: 'MetaclassForTraits' ] on: NotFound do: [ metaclassForTraitIndex := nil ]