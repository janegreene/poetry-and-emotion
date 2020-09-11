class Poem
  attr_reader :title, :author, :lines
  def initialize(argument)
    @title = argument[:title]
    @author = argument[:author]
    @lines = merge_lines(argument[:lines])
  end
  def self.get_poems(json)
    json.map do |poem|
       Poem.new(poem)
     end
  end
  def merge_lines(lines)
    lines.join(", ")
  end
end
