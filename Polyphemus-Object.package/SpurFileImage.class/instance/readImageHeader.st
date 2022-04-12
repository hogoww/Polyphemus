accessing
readImageHeader

"Reading the version will allow us to find the format"
	self readVersionFromImageHeader.
	self is32Bit ifTrue:[
		self readImageHeader32 ].
	self is64Bit ifTrue:[
		self readImageHeader64 ]
  