instance creation
canHandle: anAddress memory: aMemory

	^ (aMemory isOopCompiledMethod: anAddress) and: [ 
		  aMemory compiledMethodClass ~= (aMemory fetchClassOf: anAddress) ]