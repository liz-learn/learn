class Foo

    def initialize(bar)
      @bar = bar
    end

    def say
      @bar.talk
    end

end

class Cow
  def talk; puts "moo"; end
end

class Duck
  def talk; puts "quack"; end
end

Foo.new(Cow.new).say
Foo.new(Duck.new).say
