a = 5	
b = 0	
while b!= a 
	puts "Guess a number"
	b = gets.chomp.to_f
	if b < a then
		puts "Too low"

	end

	if b > a then 
		puts "Too high"
	end 

	if b == a then
		puts "That's right"
	end
end