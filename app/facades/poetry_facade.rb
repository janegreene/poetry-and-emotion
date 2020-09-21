class PoetryFacade
  def self.get_poems(search_term, limit)
    poems = PoetryService.get_poems_by_author(search_term)
    poems.first(limit).map do |poem|
       poem_obj =Poem.new(poem[:title],
               poem[:author],
               poem[:lines],
               poem[:linecount])
       tones = ToneAnalyzerService.sentiment_analysis(poem_obj).map {|tone| Tone.new(tone)}
       poem_obj.set_tones(tones)
       poem_obj
    end
  end
end
