baselines
defaultPlayground
	^ '" clean P11 "path := AbstractInspectorsTest pathToPharo11.
" Minimal Pharo11 " path := AbstractInspectorsTest pathToMinimal64Bit.
"PharoCandle image" path := AbstractInspectorsTest pathToCandle64Bit.
(MemoryInspector newFromImage: path) open.'