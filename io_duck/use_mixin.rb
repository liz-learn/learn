require "date"
module UseDatetime
	def get_datetime
        current = DateTime.now
        out_string = current.month.to_s + "-" + current.day.to_s + "-" + current.year.to_s + 
        " @ " + current.hour.to_s + ":" + current.minute.to_s + ":" + current.second.to_s
    end
end
