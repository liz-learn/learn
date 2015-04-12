class UseArray
    $LOAD_PATH << '.'
    require "use_mixin"
    include UseDatetime
    def initialize(array)
        @array = array
    end
    def append_end
        @array << "end@#{get_datetime}"         
    end

    def read_it
       @array.each { |x| puts x }
    end

    def append_beg
        @array.insert(0, "beg@#{get_datetime}")    
    end    
end

