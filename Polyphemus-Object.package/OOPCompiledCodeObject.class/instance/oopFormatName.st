accessing
oopFormatName
	^ String streamContents: [ :s | s << 'Compiled method (' << self oopFormat printString << ')' ]