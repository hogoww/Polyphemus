accessing
basicAt: anIndex
	"this could be dramatic if the instance really need basicAt:"
	^ (self indexedAt: anIndex)
	