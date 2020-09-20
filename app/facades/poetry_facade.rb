class PoetryFacade
  def self.get_poems(search_term, limit)
    poems = PoetryService.get_poems_by_author(search_term)
    poems.first(limit).map do |poem|
       Poem.new(poem[:title],
               poem[:author],
               poem[:lines],
               poem[:linecount])
    end
  end
end
