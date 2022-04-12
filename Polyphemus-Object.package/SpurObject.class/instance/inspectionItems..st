inspection
inspectionItems: aBuilder
	<inspectorPresentationOrder: 0 title: 'Oop'>
	| items  |
	
	self isImmediate ifTrue: [ ^ address value inspectIntegerIn: aBuilder ].
	items := self isForwarder 
		ifTrue: [ self inspectionItemsForForwarder ]
		ifFalse: [ self inspectionItemsForRegularObject ].
	
	^ aBuilder newTable 
		addColumn: (SpStringTableColumn 
			title: 'Key'
			evaluated: [ :each | StObjectPrinter asTruncatedTextFrom: each key ])
			beSortable;
		addColumn: (SpStringTableColumn 
			title: 'Value' 
			evaluated: [ :each | StObjectPrinter asTruncatedTextFrom: each value ])
			beSortable;
		items: items;
		yourself