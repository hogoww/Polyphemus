utilities
corrupt: corruptedObject

	memory longAt: corruptedObject put: 0 "Doing manual corruptionof header"