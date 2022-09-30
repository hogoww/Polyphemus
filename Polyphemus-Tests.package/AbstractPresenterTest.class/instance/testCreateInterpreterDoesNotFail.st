running
testCreateInterpreterDoesNotFail

	| path |
	path := AbstractInspectorsTest new pathToCandle64BitImage.
	self shouldnt: [ AbstractInspectorPresenter newFromImage: path ] raise: Error