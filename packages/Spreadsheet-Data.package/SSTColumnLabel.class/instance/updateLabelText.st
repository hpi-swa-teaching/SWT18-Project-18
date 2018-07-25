updating
updateLabelText

	| characterIndex labelText numberOfCharacters |
	
	characterIndex := ($A asciiValue + ((self index - 1) \\ self asciiOffset)) asCharacter.
	numberOfCharacters := (self index / self asciiOffset) ceiling.
	labelText := String new.
	numberOfCharacters timesRepeat: [labelText := labelText, characterIndex].
	self text: labelText.