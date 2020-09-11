class Poem
  def initialize(argument)
    require "pry"; binding.pry
    @argument = argument
  end
  def get_poems(json)
  json.map do |character_data|
     Character.new(character_data)
   end
end
