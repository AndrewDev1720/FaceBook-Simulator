class Dev
  attr_accessor :name, :language
  def initialize(anb)
    self.name = anb[:name]
    self.language = anb[:language]
  end
end
matz = Dev.new(namee: :Matzz, language: 'Ruby')
matz # => #<Dev: @name="Matz", @language="Ruby">

puts matz.name