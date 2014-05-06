def splitter

	print "Enter the string to split: "
	
	user_input = gets.chomp

	user_array = user_input.split('')


	puts "The current array is: #{user_array}"
	user_array.shuffle!	#shuffling the array around
	puts "The new array is: #{user_array} \n"

	new_string = user_array.join

	puts new_string
end

def hasher
	person1 = { first: "Johnny", last: "Smith" }
	person2 = { first: "Jane", last: "Smith" }
	person3 = { first: "James", last: "Nasmith" }

	params = { father: person1, mother: person2, child: person3 }

	puts params[:father][:first]
	
end


splitter
hasher