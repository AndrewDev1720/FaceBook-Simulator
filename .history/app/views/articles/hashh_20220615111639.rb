class Dev
  attr_accessor :name, :language
  def initialize(anb)
    self.name = anb[:name]
    self.language = anb[:language]
  end
end
# matz = Dev.new(name: :Matzz, language: 'Ruby') # => #<Dev: @name="Matz", @language="Ruby">

h = {name: :Matzz, language: :Ruby}
matz = Dev.new(h)
puts matz
