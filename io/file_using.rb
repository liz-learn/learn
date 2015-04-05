class FileUsing
    def initialize(file)
        @file = file
    end
    def in_out
        @file.readlines.each do |line|
            puts line
        end
        @file.write 'this file has been seen - this line should be last'        
        @file.rewind
        @file.write 'this file has been seen - this line should be first'
    end

end

# Make this work with so you can make the beginning and end work over and over
# have initialize take filname and have file
# start learn ruby the hard way and figure out where to start
