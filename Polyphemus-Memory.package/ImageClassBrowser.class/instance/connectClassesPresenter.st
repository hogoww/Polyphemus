initialization
connectClassesPresenter

	classesList 	
		transmitTo: methods
		transform: [ :aClass |
			aClass reifiedMethods
			].