as yet unclassified
dot: aColor size: aNumber
	^ BlElement new
		extent: aNumber @ aNumber;
		geometry: BlCircleGeometry new;
		background: aColor;
		yourself