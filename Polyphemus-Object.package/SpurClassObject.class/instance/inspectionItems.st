testing
inspectionItems
	^ super inspectionItems addFirst: { #name -> self className }