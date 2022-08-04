initialization
setUpBaseAddress

	"All further addresses would be calculated as offset of this one for objects, it is nilObj - wordSize so that nilObject is the firstObject"
	baseAddress := memory newSpaceStart - memory wordSize.