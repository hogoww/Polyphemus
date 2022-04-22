accessing
open
	"Some computation cannot be done (apparently) before the window is open (e.g. the statistics)
	Therefore we need the memoryPresenter to signal update after the window is open."
	| window |
	window := super open.
	memoryPresenter signalUpdate.
	^ window