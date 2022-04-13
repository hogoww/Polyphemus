inspection
inspectionItemsForRegularObject
	| items |

	items := {
		#address -> self address.
		#header -> (self header printStringBase: 2).
		#class -> self classSpurObject.
		#classIndex -> self classIndex.
		#format -> self format.
		#layout -> self spurLayout.
		#hash -> self oopHash.
		#pinned -> self isPinnedOop.
		#space -> self spaceString.
		#immutable -> self isImmutable.
		#numSlots -> self numSlots.	
		} asOrderedCollection .
		
	1 to: self numSlots do: [ :i| items add: (('slot', i printString) -> (self slotAt: i)) ].
	^ items