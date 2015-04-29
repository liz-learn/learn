class ObjArray 
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
    def do_read(obj)
        obj.read_it
    end

    def do_append_end(obj)
        obj.append_end
    end

    def do_append_beg(obj)
        obj.append_beg
    end        
end