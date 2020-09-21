class Poem
  attr_reader :title, :author, :text, :linecount, :tones
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
  def set_tones(tone_obj)
    @tones = tone_obj
  end
end
