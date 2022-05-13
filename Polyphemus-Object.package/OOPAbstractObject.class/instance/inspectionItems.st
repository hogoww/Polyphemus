inspection
inspectionItems
	| items |

	items := {
		#address -> self printString.
		#header -> (self oopHeader printStringBase: 2).
		#class -> self oopClass.
		#oopClassTag -> self oopClassTag.
		#format -> self oopFormatName.
		#hash -> self oopHash.
		#pinned -> self isPinnedOop.
		#space -> self spaceString.
		#immutable -> self isImmutableOop.
		} asOrderedCollection .

	items addAll: self containedInspectionItems.

	^ items