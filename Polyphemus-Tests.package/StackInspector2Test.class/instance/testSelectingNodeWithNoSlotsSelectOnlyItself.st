test-selecting
testSelectingNodeWithNoSlotsSelectOnlyItself
	
	self newZeroSizedObject.
	
	stackInspector updateInspector.
	stackInspector newSpaceNodes anyOne click.
	
	"We also have the freelist from set upm that survived and is not tenured"
	self assert: stackInspector newSpaceNodes anyOne paint equals: stackInspector colorProvider initialSelectionColor.