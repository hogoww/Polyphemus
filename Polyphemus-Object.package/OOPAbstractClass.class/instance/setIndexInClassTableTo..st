reflective operations
setIndexInClassTableTo: newIndex
	"Careful, this only changes the index in the header, 
	it does not move the class to this new index!"
	memory setHashBitsOf: self address to: newIndex - 1
