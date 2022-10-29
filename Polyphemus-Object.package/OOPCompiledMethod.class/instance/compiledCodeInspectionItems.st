accessing
compiledCodeInspectionItems
	^ { 
		#selector -> self oopSelector.
		#methodClass -> self oopMethodClass
		}