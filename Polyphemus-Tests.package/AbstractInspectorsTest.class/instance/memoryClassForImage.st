running
memoryClassForImage
	| version |
	self imagePath ifNil: [ ^ nil ].
	version := self imagePath asFileReference binaryReadStream nextLittleEndianNumber: 4.
	
	(version = Spur32BitMemoryManager new imageFormatVersion
		or: [ version byteSwap32 = Spur32BitMemoryManager new imageFormatVersion ])
		ifTrue: [ 
			wordSize := 4.
			^ Spur32BitMemoryManager ].
		
	(version = Spur64BitMemoryManager new imageFormatVersion
			or: [ version byteSwap32 = Spur64BitMemoryManager new imageFormatVersion ])
		ifTrue:[
			wordSize := 8.
			^ Spur64BitMemoryManager ].
		
	self error: 'Unreadble Image Format.'