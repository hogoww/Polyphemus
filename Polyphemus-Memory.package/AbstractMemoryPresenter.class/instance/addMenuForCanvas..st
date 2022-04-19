building
addMenuForCanvas: canvas
	| menuActivable |
	menuActivable := RSMenuActivable new.
	menuActivable menuDo: [ :menu :element | 
	
		menu 
			add: 'Scaling by byte size'
			target: self
			selector: #updateScalingTo:
			argument: #setScalingByByteSize.
		menu 
			add: 'No scalling'
			target: self
			selector: #updateScalingTo:
			argument: #setDefaultScaling
			].
	canvas @ menuActivable.