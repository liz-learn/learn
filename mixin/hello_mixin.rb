#class
#initialize - one param
#puts hello world with name passed in
#3 total methods (including init), show over-riding
#mixin will be a module outside of the class, but in the same file
#other notes - use pry (added gem outside of the rvm for projects)
#to run - pry, to reload...
#bash commands used (some misc)
  # 151  rake db:drop db:create db:migrate db:seed db:populate:test_data
  # 153  elasticsearch
  # 375  bin/rspec spec/models/recommended_resource_spec.rb 
  # 471  git log
  # 472  git reset --hard c648637858f5748347caf597f12449456d66ea7d
  # 473  git log origin/anyar_liz/TCHS-3048_refactoring_recommendations2..anyar_l
  # 513  gem install pry
  # 514  ls -al
  # 515  which ruby
  # 516  which gem
  # !gem (to execute last from history)
  # 517  gem install pry
  # 518  brew install openssl
  # 519  rvm list
  # 520  use ruby-2.1.3
  # 521  rvm use ruby-2.1.3
  # 522  gem install pry
  # 525  rvm use --help| less
  # 530  rvm use ruby-2.1.5 --default
  # 547  history

class Hello
    include World  
    def initialize(out_str)
        @out_str = out_str
    end
    def add_to(in_str)
        @out_str = @out_str + in_str
        puts @out_str
    end
    def replace(in_str)
        @out_str = in_str    
        puts @out_str
    end
end

module World
    def double
        @out_str = @out_str + " " + @out_str
        puts @out_str
    end
    #note - mixins don't overide methods in the class they are mixed in
    def replace(in_str)
        @out_str = in_str + " " + in_str
    end
end
