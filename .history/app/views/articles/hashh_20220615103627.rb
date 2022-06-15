class Dev
  attr_accessor :name, :language
  def initialize(anb)
    self.name = anb[:name]
    self.language = anb[:language]
  end
end
matz = Dev.new(name: 'Matz', language: 'Ruby')
matz # => #<Dev: @name="Matz", @language="Ruby">
x = 5
y = 6
h = {x:, y:}
puts h[:x]