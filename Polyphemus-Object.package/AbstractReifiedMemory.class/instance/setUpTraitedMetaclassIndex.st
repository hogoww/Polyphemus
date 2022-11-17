initialization
setUpTraitedMetaclassIndex

	[ traitedMetaclassIndex := self preFindClassNamed: 'TraitedMetaclass' ] on: NotFound do: [ traitedMetaclassIndex := nil ]