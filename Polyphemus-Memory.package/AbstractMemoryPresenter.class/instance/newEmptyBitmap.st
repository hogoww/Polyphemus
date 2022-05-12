initialization
newEmptyBitmap
	"this method is going to create a new empty bitmap with a loading logo "
	| shape canvas |
	shape := RSBitmap new.
	canvas := RSCanvas new.
	canvas extent: 300 asPoint.
	canvas add: (RSLabel new
		text: 'Loading data...';
		color: 'black';
		yourself).
	shape form: canvas asForm.
	^ shape