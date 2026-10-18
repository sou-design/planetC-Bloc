removing
householdsHere
	| result |
	result := OrderedCollection new.
	harvesters do: [ :each |
		(result includes: each household) ifFalse: [ result add: each household ] ].
	^ (result asSortedCollection: [ :a :b | a index <= b index ]) asArray