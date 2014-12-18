require 'pry'

class Pair < ActiveRecord::Base

	def self.search(query)
		if query
	    Pair.where
	  # else
	  #   find(:all)
		end
	  end
	
end
