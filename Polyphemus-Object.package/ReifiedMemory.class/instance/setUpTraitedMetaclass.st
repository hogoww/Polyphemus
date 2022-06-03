initialization
setUpTraitedMetaclass

		[ traitedMetaclass := self preFindClassNamed: 'TraitedMetaclass' ] onErrorDo: [ traitedMetaclass := nil ]