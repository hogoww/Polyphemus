instance creation
canHandle: anAddress memory: aMemory

	^ (aMemory isOopCompiledMethod: anAddress) and: [ 
		  aMemory compiledMethodClassIndex ~= (aMemory fetchClassTagOf: anAddress) ]