baselines
defaultPlayground
	^ '" clean P11 "path := PharoImageAccessor pathToPharo11.
" Minimal Pharo11 " path := PharoImageAccessor pathToMinimalP11.
" PharoCandle image " path := PharoImageAccessor pathToCandle64Bit.
(MemoryInspector newFromImage: path) open.'