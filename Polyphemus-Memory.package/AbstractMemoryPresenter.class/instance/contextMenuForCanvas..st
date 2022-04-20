building
contextMenuForCanvas: canvas
	| menuActivable |
	menuActivable := RSMenuActivable new.
	menuActivable menuDo: [ :menu :element | 
		
		menu 
			add: 'No scaling'
			target: self
			selector: #updateScalingTo:
			argument: #setScalingToDefault.
		
		menu 
			add: 'Scaling size by byte size'
			target: self
			selector: #updateScalingTo:
			argument: #setScalingSizeByByteSize.
		
		menu 
			add: 'Scaling width by byte size'
			target: self
			selector: #updateScalingTo:
			argument: #setScalingWidthByBytesize.
			].
	canvas @ menuActivable.