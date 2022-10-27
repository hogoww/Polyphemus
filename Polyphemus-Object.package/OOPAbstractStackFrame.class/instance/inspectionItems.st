inspection
inspectionItems
	| items |

	items := {
		#method -> self oopMethod.
		#context -> self oopContext.
		#flag -> self oopFlag.
		#receiver -> self oopReceiver.
		} asOrderedCollection.
		
	items addAll: self inspectionItemsOperandStack.
	items add: #savedIP -> self savedIP.

	^ items