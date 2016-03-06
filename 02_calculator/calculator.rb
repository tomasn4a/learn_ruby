def add(dig1,dig2)
	dig1+dig2
end

def subtract(dig1,dig2)
	dig1-dig2
end

def sum(arr)
	result = 0
	arr.each{|x| result+=x}
	return result
end

def multiply(arr)
	if arr ==[]
		return 0
	else
		result =1
		arr.each{|x| result=x*result}
		return result
	end
end

def power(a,b)
	return a**b
end

def factorial(a)
	if a == 0
		return 1
	else
		result = 1
		while a>1
			result*=a
			a-=1
		end
		return result
	end
end