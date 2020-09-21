class Tone
  attr_reader :name
  def initialize(argument)
    @name = argument[:tone_name]
  end
end
