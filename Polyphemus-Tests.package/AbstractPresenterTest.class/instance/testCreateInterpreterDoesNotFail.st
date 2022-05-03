running
testCreateInterpreterDoesNotFail

	| path |
	path := AbstractInspectorsTest new pathTo64BitImage.
	self shouldnt: [ AbstractInspectorPresenter newFromImage: path ] raise: Error