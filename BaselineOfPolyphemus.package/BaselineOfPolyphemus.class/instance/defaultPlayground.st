baselines
defaultPlayground
	^ '" clean P11 "path := PharoImageAccessor pathToPharo11.
" Minimal Pharo11 " path := PharoImageAccessor pathToMinimal64Bit.
" PharoCandle image " path := PharoImageAccessor pathToCandle64Bit.
(MemoryInspector newFromImage: path) open.'