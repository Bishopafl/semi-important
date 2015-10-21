sports = {
	:basketball => [
		{ :magic => []}
		{ :lakers => []}
		{ :heat => [
			[], #0
			[]  #1
			[ { :year => 1995}]
			]}
		
	]



}


puts sports[:basketball]
puts sports[:basketball][2][:heat][1][0][:year]