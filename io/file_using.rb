class FileUsing
    require "date"
    def initialize(in_file)
        @file = File.new(in_file, "a+")
        @filename = in_file
    end
    def in_out
        if !@file.instance_of? File
            puts 'run FileUsing.new(filename)'
            return
        end
        @file.readlines.each do |line|
             puts line
        end
        @file.puts "this file has been seen on #{get_datetime}" 
        @file.rewind  
    end

    def get_datetime
        current = DateTime.now
        out_string = current.month.to_s + "-" + current.day.to_s + "-" + current.year.to_s + 
        " @ " + current.hour.to_s + ":" + current.minute.to_s + ":" + current.second.to_s
    end

    def append_line_to_beginning
        @file.rewind
        File.open("#{@filename}.new", 'w') do |f2|  
          # use "\n" for two lines of text  
          f2.puts "added new first line on #{get_datetime}" 
          @file.readlines.each do |line|
            f2.puts line
          end 
        end
        @file.close
        File.rename("#{@filename}.new", @filename)
        @file = File.new(@filename, "a+")
    end
end

