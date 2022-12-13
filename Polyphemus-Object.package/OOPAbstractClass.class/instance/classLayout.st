debugger
classLayout
	| layout superclass |
	layout := self reifiedSlotAt: 4.
	superclass := self reifiedSlotAt: 1.
	^ layout
		ifNil: [ 
			| superLayout scope |
			superLayout := superclass 
				ifNil: [ FixedLayout new slotScope: LayoutEmptyScope instance] "happened in the bootrap"
				ifNotNil: [:sl | sl classLayout].
			scope := superLayout slotScope extend.
			layout := superLayout class extending: superLayout scope: scope host: self ]