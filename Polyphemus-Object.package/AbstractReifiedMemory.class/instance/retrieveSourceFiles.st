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
	aSourceFile := (SourceFile on: sourcePath fullName potentialLocations: {rootPath fullName}) tryOpenReadOnly: true.
	aChangeFile := (SourceFile on: chancePath fullName potentialLocations: {rootPath fullName}) tryOpenReadOnly: true.
	 "We must handle the possibility of change file not available here"
	sourceFiles changesFileStream: aChangeFile.
	sourceFiles sourcesFileStream: aSourceFile.
	
	^ sourceFiles