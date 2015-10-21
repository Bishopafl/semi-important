arr = [ 

	["chest", "key", "door", "jhjgjhgh", "yjghggh", {
		:secret => { :unlock => ["asdf", "BoSS!!"]}}],
	[4, "rope", "light", "fairy", "bottle", "potion"],
	[{:secret => "MegaPotion", :hole => "death", :rope => "escape"}],
	[{:unlock => ["goblin", "boss fight"]}]

]


puts arr[0][5][:secret][:unlock][1]