running
testCreateInterpreterDoesNotFail

	| path |
	path := AbstractInspectorsTest pathToCandle64Bit.
	self shouldnt: [ AbstractInspectorPresenter newFromImage: path ] raise: Error