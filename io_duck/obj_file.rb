class ObjFile 
    $LOAD_PATH << '.'
    require "use_mixin"
    include UseDatetime
    def initialize(file)
        @file = file
    end
    def append_end
        @file.seek(0, IO::SEEK_END)         
        @file.puts "appending line #{get_datetime}" 
    end

    def read_it
       @file.rewind
       @file.readlines.each do |line|
         puts line
       end        
    end

    def append_beg
        @file.pos = 0                    
        rest = @file.read                 # save file
        @file.seek 0                      # go back to the old position
        @file.write "beginning line #{get_datetime}\n"
        @file.write rest 
     end    
end

