initialization
createInterpreterFrom: anImagePath

	| memory |

	memory := (AbstractInspectorsTest new imagePath: anImagePath) newMemory.

	StackInterpreterSimulatorLSB
		initializeWithOptions: { 
			#BytesPerWord. 8.
		 	#ObjectMemory. memory class name }
		objectMemoryClass: memory class.

	interpreter := StackInterpreterSimulatorLSB basicNew
		  objectMemory: memory;
		  basicInitialize;
		  pluginList: { };
		  yourself.
	
	interpreter openOn: anImagePath.
	interpreter initStackPages.
	interpreter loadInitialContext.