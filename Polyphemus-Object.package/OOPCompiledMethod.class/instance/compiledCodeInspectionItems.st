accessing
compiledCodeInspectionItems
	^ { 
		#selector -> self selector.
		#methodClass -> self oopMethodClass
		}