running
testCreateInterpreterDoesNotFail

	| path |
	path := PharoImageAccessor pathToCandle64Bit.
	self shouldnt: [ AbstractInspectorPresenter newFromImage: path ] raise: Error