accessing
compiledCodeInspectionItems
	^ { 
		#selector -> self selector.
		#methodClass -> self methodClass
		}