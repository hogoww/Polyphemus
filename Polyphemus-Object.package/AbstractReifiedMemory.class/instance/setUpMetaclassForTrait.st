initialization
setUpMetaclassForTrait

		[ metaclassForTrait := self preFindClassNamed: 'MetaclassForTraits' ] on: NotFound do: [ metaclassForTrait := nil ]