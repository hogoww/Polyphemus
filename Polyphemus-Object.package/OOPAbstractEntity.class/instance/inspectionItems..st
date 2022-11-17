inspection
inspectionItems: aBuilder
	<inspectorPresentationOrder: 0 title: 'Oop'>

	^ aBuilder newTable 
		addColumn: (SpStringTableColumn 
			title: 'Key'
			evaluated: [ :each | StObjectPrinter asTruncatedTextFrom: each key ])
			beSortable;
		addColumn: (SpStringTableColumn 
			title: 'Value' 
			evaluated: [ :each | StObjectPrinter asTruncatedTextFrom: each value ]) 
			beSortable;
		items: (self inspectionItems collect: [:e | StInspectorAssociationNode hostObject: e ]);
		beResizable;
		alternateRowsColor;
		yourself