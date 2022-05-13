printing
oopFormatName
	^ String streamContents: [ :s | s << '32-bit indexable (Bitmap) (' << self oopFormat printString << ')' ]