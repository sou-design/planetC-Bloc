as yet unclassified
activeHarvesters
	^ harvesters select: [ :h |
		game cells anySatisfy: [ :c | c harvesters includes: h ] ]