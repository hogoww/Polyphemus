accessing
indexForAddress: anAddress
	"objects addresses are offsets from a base address and then compacted"

	^ anAddress - baseAddress >> 3