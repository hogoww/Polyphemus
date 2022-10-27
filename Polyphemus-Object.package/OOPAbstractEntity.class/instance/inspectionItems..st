inspection
inspectionItems: aBuilder
	<inspectorPresentationOrder: 0 title: 'Oop'>
	| items  |

	self isImmediateOop ifTrue: [ ^ address value inspectIntegerIn: aBuilder ].
	items := self inspectionItems.

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
		beResizable;
		alternateRowsColor;
		yourself