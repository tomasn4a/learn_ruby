class Timer

	attr_accessor :seconds

	def seconds(sec = 0)
		@seconds = sec
	end

	def time_string
		hours = ((@seconds/3600)%60).to_s
		minutes = ((@seconds/60)%60).to_s
		seconds = (@seconds%60).to_s
		if hours.length == 1 
			hours = "0"<<hours
		end
		if minutes.length == 1 
			minutes = "0"<<minutes
		end
		if seconds.length == 1 
			seconds = "0"<<seconds
		end
		hours+":"+minutes+":"+seconds
	end

end