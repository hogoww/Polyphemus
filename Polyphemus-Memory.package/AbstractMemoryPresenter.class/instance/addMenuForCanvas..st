building
addMenuForCanvas: canvas
	| menuActivable |
	menuActivable := RSMenuActivable new.
	menuActivable menuDo: [ :menu :element | 
		menu 
			add: 'Use byteSize scalling'	
			target: self
			selector: #updateScalingTo:
			argument: #setScalingByByteSize.
		menu 
			add: 'Do not use scalling'	
			target: self
			selector: #updateScalingTo:
			argument: #setDefaultScaling
			].
	memorySpace contextMenu: menuActivable.