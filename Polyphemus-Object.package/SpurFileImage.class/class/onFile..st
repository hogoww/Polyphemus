as yet unclassified
onFile: aFile

	| memory |
	memory := aFile asFileReference binaryReadStream contents.
	^ self onMemory: memory