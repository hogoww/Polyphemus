baselines
postLoad
	| browser playground |
	browser := ToolRegistry new openClassBrowser.
	browser packageView filterField updateTextWith: 'Polyphemus'.
	browser owner tileLeft.
	playground := StPlayground openContents: self defaultPlayground.
	playground window tileTopRight.
	