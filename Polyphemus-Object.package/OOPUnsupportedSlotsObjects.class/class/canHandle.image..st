testing
canHandle: anAddress image: image
	"unsupported formats"
	^ #(4 5), (9 to: 15)  includes: (image memory formatOf: anAddress)