class Dev
  attr_accessor :name, :language
  def initialize(an)
    self.name = hash[:name]
    self.language = hash[:language]
  end
end
matz = Dev.new(name: 'Matz', language: 'Ruby')
matz # => #<Dev: @name="Matz", @language="Ruby">
puts matz