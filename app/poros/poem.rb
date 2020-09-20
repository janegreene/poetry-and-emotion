class Poem
  attr_reader :title, :author, :text, :linecount
  def initialize(title, author, lines, linecount)
    @title = title
    @author = author
    @text = merge_lines(lines)
    @linecount = linecount
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
