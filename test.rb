require 'medium'

def raises_thing
  raise Exception
rescue Exception
end

def test
  all = Medium.all
  p class << all; self; end.ancestors
  p all.method(:any?).source_location
  p all.any? { |m| raises_thing; true }
  p all.any? { |m| raises_thing; true }
end

p test # => nil
p test # => nil
