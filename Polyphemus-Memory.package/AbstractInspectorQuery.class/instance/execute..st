execution
execute: anInspector
	self addQueryBehavior: anInspector.
	anInspector colorProvider: self queryColorProvider.
	anInspector update