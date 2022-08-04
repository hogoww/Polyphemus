private
compute
	firstVisit := true.
	self visitObject: rootObject.
	^ subgraph