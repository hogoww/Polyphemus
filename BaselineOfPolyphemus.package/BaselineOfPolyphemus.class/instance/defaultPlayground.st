baselines
defaultPlayground
	^ '" clean P11 "path := AbstractInspectorsTest pathToPharo11.
" Minimal Pharo11 " path := AbstractInspectorsTest pathToMinimalP11.
"PharoCandle image" path := AbstractInspectorsTest pathToCandle64Bit.
(MemoryInspector newFromImage: path) open.'