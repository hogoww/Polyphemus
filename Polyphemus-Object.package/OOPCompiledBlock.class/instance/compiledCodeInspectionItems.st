inspection
compiledCodeInspectionItems
	^ { 
		#hostMethod -> self hostMethodOop.
		#methodHeader -> self methodHeader 
		}