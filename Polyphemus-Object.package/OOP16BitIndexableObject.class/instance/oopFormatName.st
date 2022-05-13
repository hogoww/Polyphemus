printing
oopFormatName
	^ String streamContents: [ :s | s << '16-bit indexable (' << self oopFormat printString << ')' ]