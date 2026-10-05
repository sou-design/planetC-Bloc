as yet unclassified
leave
	household game cells do: [ :c |
		(c harvesters includes: self) ifTrue: [ c removeHarvester: self ] ]