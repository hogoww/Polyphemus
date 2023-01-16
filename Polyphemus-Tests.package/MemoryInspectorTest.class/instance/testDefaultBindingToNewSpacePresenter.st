tests-bindings
testDefaultBindingToNewSpacePresenter
	self assert: (inspector scripter bindings includesKey: #newSpace).
	self assert: (inspector scripter bindings at: #newSpace) isNotNil