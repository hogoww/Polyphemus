gt-inspector-extension
gtInspectorLayoutIn: composite
	^ composite table
		title: 'Inst Vars';
		display: [ 
			self allSlots collectWithIndex: [ :slot :index | index -> slot  ] ];
		column: 'Index' evaluated: [:each |  each key ];
		column: 'Value' evaluated: [ :each | each value ];
		send: #value