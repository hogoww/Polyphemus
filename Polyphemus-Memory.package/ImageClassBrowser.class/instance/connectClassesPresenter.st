initialization
connectClassesPresenter

	classes 	
		transmitTo: methods
		transform: [ :aClass | | methodDict |
			methodDict := aClass reifiedMethodDictionary reifiedSlotAt: 2.
			(3 to: methodDict numSlots) collect:[ :anIndex |
				methodDict reifiedSlotAt: anIndex
				] thenSelect: [ :anOop | anOop isNilOop not ].
			].