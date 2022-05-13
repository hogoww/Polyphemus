printing
oopFormatName
	^ String streamContents: [ :s | s << '8-bit indexable (' << self oopFormat printString << ')' ]