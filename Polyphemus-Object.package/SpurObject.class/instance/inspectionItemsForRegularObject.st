inspection
inspectionItemsForRegularObject
	| items |

	items := {
		#address -> self address.
		#header -> (self header printStringBase: 2).
		(self isClassOop 
			ifTrue:[ #name -> self asSpurClass className ] 
			ifFalse: [ #isClass -> false ]).
		#class -> self classSpurObject.
		#className ->  self classSpurObject asSpurClass className.
		#classIndex -> self classIndex.
		#format -> self format.
		#layout -> self spurLayout.
		#hash -> self oopHash.
		#pinned -> self isPinnedOop.
		(#space -> (self isOld ifTrue: 'Old Space' ifFalse: 'Young Space')).
		#immutable -> self isImmutable.
		#numSlots -> self numSlots.	
		} asOrderedCollection .
		
	1 to: self numSlots do: [ :i| items add: (('slot', i printString) -> (self slotAt: i)) ].
	^ items