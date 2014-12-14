class Pair < ActiveRecord::Base

	before_save :translate

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

	def to_english(sentence)
	end

	private

	def translate
		if self.english
			self.pig_latin = self.english.piggiesfy
		else
			self.english = self.pig_latin.to_english
		end
		self.save
	end

end
