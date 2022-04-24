building
contextMenuForCanvas: canvas
	| menuActivable |
	menuActivable := RSMenuActivable new.
	menuActivable menuDo: [ :menu :element | 
		
		menu 
			add: 'No scaling'
			target: self
			selector: #updateScalingTo:
			argument: self scalingToDefault.
		
		menu 
			add: 'Scaling size by byte size'
			target: self
			selector: #updateScalingTo:
			argument: self scalingSizeByByteSize.
		
		menu 
			add: 'Scaling width by byte size'
			target: self
			selector: #updateScalingTo:
			argument: self scalingWidthByBytesize.
			].
	canvas @ menuActivable.