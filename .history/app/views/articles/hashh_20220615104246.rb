class Dev
  attr_accessor :name, :language
  def initialize(anb)
    self.name = anb[:name]
    self.language = anb[:language]
  end
end
matz = Dev.new(name: 'Matz', language: 'Ruby')
matz # => #<Dev: @name="Matz", @language="Ruby">
1 = :Dev
puts :Dev