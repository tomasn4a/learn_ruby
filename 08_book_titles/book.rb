class Book

	attr_accessor :title

	def title=(str)
		sp_str = str.split(" ")
		res = []
		articles = ['the','a','an']
		conjuctions = ['and','that','but','or','as','if','that','because','while']
		prepositions = ['of','in','to','for','with','on','at','from','by','about']
		res.push(sp_str[0].capitalize)
		sp_str[1,sp_str.length].each do |word|
			if (articles+conjuctions+prepositions).include?(word)
				res.push(word)
			else
				res.push(word.capitalize)
			end
		end
		@title = res.join(" ")
	end

end

