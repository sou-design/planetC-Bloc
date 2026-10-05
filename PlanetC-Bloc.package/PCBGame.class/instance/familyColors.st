accessing
familyColors
	^ #( '1D9E75' 'D85A30' '534AB7' '378ADD' 'EF9F27' )
		collect: [ :each | Color fromHexString: each ]