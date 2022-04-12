gt-inspector-extension
gtInspectorLayoutIn: composite
	^ composite table
		title: 'asd';
		display: [ 
			{ 
			'self' -> self .
			'superclass' -> self spSuperclass  .    
			'format:' -> self classFormat .
			'instSpec' -> self instSpec .
			'instSize' -> self instSize} ];
		column: 'Key' evaluated: [:each |  each key ];
		column: 'Value' evaluated: [ :each | each value ];
		send: #value
