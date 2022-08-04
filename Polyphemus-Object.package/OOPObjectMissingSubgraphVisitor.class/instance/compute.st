private
compute

	memory objectAt: rootObject address put: rootObject.
	self visitSlotsOf: rootObject.
	^ subgraph