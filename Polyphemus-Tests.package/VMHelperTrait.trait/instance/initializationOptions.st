initialization
initializationOptions

	^ { 
		  #BytesPerWord.
		  self wordSize.
		  #ObjectMemory.
		  memory class name}