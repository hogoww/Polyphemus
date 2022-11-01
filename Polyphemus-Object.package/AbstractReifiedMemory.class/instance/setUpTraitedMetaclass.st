initialization
setUpTraitedMetaclass

	[ traitedMetaclass := self preFindClassNamed: 'TraitedMetaclass' ] on: NotFound do: [ traitedMetaclass := nil ]