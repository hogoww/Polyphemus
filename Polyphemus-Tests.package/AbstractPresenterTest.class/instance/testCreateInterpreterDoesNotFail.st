running
testCreateInterpreterDoesNotFail

	| path |
	path := AbstractInspectorsTest new imagePath.
	self shouldnt: [ AbstractInspectorPresenter newFromImage: path ] raise: Error