initialization
newEmptyBitmap
	"this method is going to create a new empty bitmap with a loading logo "
	| shape |
	shape := RSBitmap new.
	
	shape form: self newLoadingForm.
	^ shape