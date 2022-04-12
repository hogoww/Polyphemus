gt-inspector-extension
gtInspectorSpecialObjectsArrayIn: composite
	<gtInspectorPresentationOrder: 1>
	
	^ [(self specialObjectsArray gtInspectorLayoutIn: composite) title: 'SOArray' ] on:Error do: [ 'lalala' ]