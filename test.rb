require 'config/environment'
require 'medium'

def raises_thing
  raise Exception
rescue Exception
end

def test
  all = Medium.all
  all.any? { |m| raises_thing; true }
end

p test # => nil
p test # => nil
p test # => nil
