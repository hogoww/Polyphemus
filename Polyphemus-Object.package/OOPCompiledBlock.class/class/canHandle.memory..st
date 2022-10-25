instance creation
canHandle: anAddress memory: aMemory

	^ (aMemory isOopCompiledMethod: anAddress) and: [ 
		  aMemory compiledMethodClassIndex ~= (aMemory classIndexOf: anAddress) ]