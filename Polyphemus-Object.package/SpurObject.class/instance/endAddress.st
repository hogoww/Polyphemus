accessing
endAddress

	| basicSize padding |
	"All objects start aligned to 64 bits.
	This means all objects FINISH aligned to 64 bits too"
	basicSize := self headerSize + self oopByteSize.
	padding := basicSize % 8.
	^ address + basicSize + padding