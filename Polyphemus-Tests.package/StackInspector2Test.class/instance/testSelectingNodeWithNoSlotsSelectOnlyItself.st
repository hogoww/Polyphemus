test-selecting
testSelectingNodeWithNoSlotsSelectOnlyItself
	
	self newZeroSizedObject.
	
	memorySpace updateMemorySpace.
	memorySpace newSpaceNodes anyOne click.
	
	"We also have the freelist from set upm that survived and is not tenured"
	self assert: memorySpace newSpaceNodes anyOne paint equals: memorySpace colorProvider initialSelectionColor.