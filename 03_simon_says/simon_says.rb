def echo(str)
	str
end

def shout(str)
	str.upcase()
end

def repeat(str, n=2)
	((str+" ")*n).strip()
end

def start_of_word(str,n)
	str[0..n-1]
end

def first_word(str)
	str.split(" ")[0]
end

def titleize(str)
	split = str.split(' ')
	split.each do |word|
		word.capitalize! unless ['a','the','on','at','and','over'].include? word
	end
	split[0].capitalize!
	split.join(' ')
end