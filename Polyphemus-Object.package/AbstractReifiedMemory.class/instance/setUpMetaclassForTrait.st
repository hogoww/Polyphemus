initialization
setUpMetaclassForTrait

		[ metaclassForTrait := self preFindClassNamed: 'MetaclassForTraits' ] onErrorDo: [ metaclassForTrait := nil]