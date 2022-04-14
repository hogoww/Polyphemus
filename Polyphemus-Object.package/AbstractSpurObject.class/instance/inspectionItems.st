inspection
inspectionItems
	| items |

	items := {
		#address -> address.
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
		
	1 to: self numSlots do: [ :i| items add: (('slot', i printString) -> (self slotAt: i)) ].
	^ items