class Pair < ActiveRecord::Base
	before_save :translate

	def pigify(word)
		back = word.split("")
		first = back.slice!(0)
	 	if !word.match(/^(a|e|i|o|u)/)		
	 		print back.join("") + first + "ay" + " "
	 	else
	 		print back.join("") + first + "hay" + " "
	 	end
	end


	def piggiesfy(sentence)
		sentence.split(/\s/).map { |x| pigify(x)}.join("")
	end

	def to_english(sentence)
	end

	def translate
		@eng = self.english
		@pig = self.pig_latin
		if @eng
			@pig = piggiesfy(@eng)
		else
			@eng = @pig.to_english
		end
	end

end
