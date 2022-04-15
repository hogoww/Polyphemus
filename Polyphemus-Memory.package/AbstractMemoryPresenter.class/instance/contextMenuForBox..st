display
contextMenuForBox: box

	| menuActivable |
	menuActivable := RSMenuActivable new.
	menuActivable menuDo: [ :menu :element | 
		menu
			add: 'Color subgraph.'
			target: self
			selector: #objectGraphOf:
			argument: box model.
		menu 
			add: 'Color referencers.'	
			target: self
			selector: #allReferencersOf:
			argument: box model.
		].
	box @ menuActivable.
	^ box