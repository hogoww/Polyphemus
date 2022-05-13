printing
oopFormatName
	^ String streamContents: [ :s | s << '64-bit indexable (' << self oopFormat printString << ')' ]