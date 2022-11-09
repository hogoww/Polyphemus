as yet unclassified
retrieveSourceFiles

	"Here we have 2 choices: 
	1/try to retrive the sourceFiles object contained in the image but they can be modified on startUp afterward.
	2/recreate ourselves a sourceFiles object pointing to the sourceFiles of the target image if any 
	For now I chosed 2"

	| sourceFiles aSourceFile aChangeFile rootPath sourcePath chancePath |
	sourceFiles := SourceFileArray new.
	rootPath := memory interpreter imageName asPath parent.
	sourcePath := (rootPath asFileReference filesMatching: '*.sources') first path.
	chancePath := (rootPath asFileReference filesMatching: '*.changes') first path.
	aSourceFile := SourceFile on: rootPath potentialLocations: (SourceFiles fileAt: 1) potentialLocations.
	aChangeFile := SourceFile on: rootPath potentialLocations: (SourceFiles fileAt: 2) potentialLocations.
	 "We must handle the possibility of change file not available here"
	
	sourceFiles files: (Array with: aSourceFile with: aChangeFile).
	self halt.
	^ sourceFiles