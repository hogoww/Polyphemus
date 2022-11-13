bindings
testClosingAndReopenInspectorKeepsCode
"testChangingPageChangesPageKeepPreviousCode"
	| initialCode |
	initialCode := ' 1 + 1 '.
	inspector selectedPage setCode: initialCode.
	inspector owner close.
	inspector := self createInspector.
	self assert: initialCode equals: inspector selectedPage currentCode