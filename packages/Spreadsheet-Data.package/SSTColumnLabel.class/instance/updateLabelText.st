as yet unclassified
updateLabelText

	| characterIndex labelText numberOfCharacters |
	
	characterIndex := ($A asciiValue + ((self index - 1) \\ 26)) asCharacter.
	numberOfCharacters := (self index / 26) ceiling.
	labelText := String new.
	numberOfCharacters timesRepeat: [labelText := labelText, characterIndex].
	self text: labelText.