Class {
	#name : #BaselineOfLeeWindowsList,
	#superclass : #BaselineOf,
	#category : #BaselineOfLeeWindowTools
}

{ #category : #baselines }
BaselineOfLeeWindowsList >> baseline: spec [

	<baseline>
	spec for: #common do: [ 
		spec
			package: 'LeeWindowTools'
			]
	
]
