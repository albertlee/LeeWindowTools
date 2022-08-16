Class {
	#name : #LeeWindowsList,
	#superclass : #SpPresenter,
	#instVars : [
		'windows',
		'numbersPerLine'
	],
	#category : #LeeWindowTools
}

{ #category : #'instance creation' }
LeeWindowsList class >> open [

	<script>
	self new open
		      
]

{ #category : #layout }
LeeWindowsList >> defaultLayout [

	| theLayout lines |
	theLayout := SpBoxLayout newTopToBottom.
	lines := (windows size / numbersPerLine) asInteger.

	(0 to: lines - 1) do: [ :lineIdx | 
		theLayout add: (self lineLayoutForWindows: (windows
					  collect: [ :w | w ]
					  from: lineIdx * numbersPerLine + 1
					  to: lineIdx + 1 * numbersPerLine)) ].

	lines * numbersPerLine < windows size ifTrue: [ 
		theLayout add: (self lineLayoutForWindows: (windows
					  collect: [ :w | w ]
					  from: lines * numbersPerLine + 1
					  to: windows size)) ].
	^ theLayout
]

{ #category : #initialization }
LeeWindowsList >> initialize [

	super initialize.
	numbersPerLine := 8.

]

{ #category : #initialization }
LeeWindowsList >> initializePresenters [

	windows := WorldMorph currentWorld submorphs.

]

{ #category : #layout }
LeeWindowsList >> lineLayoutForWindows: lineWindows [

	| lineLayout |
	lineLayout := SpBoxLayout newLeftToRight.
	lineWindows do: [ :w | 
		| wP |
		wP := self newImage
			        image: (w imageFormDepth: 8);
			        autoScale: true;
			        yourself.
		wP eventHandler whenMouseDownDo: [ :evt | 
			w activateAndForceLabelToShow ].

		lineLayout add: wP ].
	^ lineLayout
]

{ #category : #accessing }
LeeWindowsList >> numbersPerLine [

	^ numbersPerLine
]

{ #category : #accessing }
LeeWindowsList >> numbersPerLine: anObject [

	numbersPerLine := anObject
]

{ #category : #'option list presenter' }
LeeWindowsList >> title [

	^ 'Windows List'
]
