testing
hasContext: anOOPContext 
	
		^ (self findContextSuchThat: [ :context | context == anOOPContext ]) notNil