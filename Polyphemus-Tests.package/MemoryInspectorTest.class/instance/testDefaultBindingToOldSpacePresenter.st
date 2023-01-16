tests-bindings
testDefaultBindingToOldSpacePresenter
	self assert: (inspector scripter bindings includesKey: #oldSpace).
	self assert: (inspector scripter bindings at: #oldSpace) isNotNil