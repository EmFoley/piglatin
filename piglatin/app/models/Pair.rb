class Pair < ActiveRecord::Base

	def pigify(word)
		back = word.split("")
		first = back.slice!(0)
		 	if !word.match(/^(a|e|i|o|u)/)		
		 		print back.join(" ") + first + "ay"
		 	else
		 		print back.join(" ") + first + "hay"
		 	end
	end

	def piggiesfy(sentence)
		sentence.split(/\s/).map { |x| pigify(x)}.join(" ")
	end

end
