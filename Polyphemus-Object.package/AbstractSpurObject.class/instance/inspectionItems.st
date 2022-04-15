inspection
inspectionItems
	| items counter |

	items := {
		#address -> self printString.
		#header -> (self oopHeader printStringBase: 2).
		#class -> self oopClass.
		#classTag -> self classTag.
		#format -> self oopFormat.
		#layout -> self spurLayout.
		#hash -> self oopHash.
		#pinned -> self isPinnedOop.
		#space -> self spaceString.
		#immutable -> self isImmutableOop.
		#numSlots -> self numSlots.	
		} asOrderedCollection .

	counter := 0.
	self allSlots collect: [ :aSlot | 
		counter := counter + 1.
		('slot', counter printString) -> aSlot.
		] into: items.

	^ items