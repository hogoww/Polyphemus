gt-inspector-extension
gtInspectorLayoutIn: composite
	^composite text
		title: 'Spur view';
		display: [ [self object asString] on:Error do: [ 'Error printing' ]	]