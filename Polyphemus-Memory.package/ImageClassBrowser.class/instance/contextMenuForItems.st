initialization
contextMenuForItems

	^ self newMenu addItem: [ :anItem | 
		  anItem
			  name: 'Inspect OOP';
			  description: 'Open an inspector on the OOP';
			  action: [ classes selectedItem inspect ] ]