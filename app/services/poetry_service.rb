class PoetryService
  def self.get_poems_by_author(params)
    response = Faraday.get( "https://poetrydb.org/author/#{params}" )
    JSON.parse(response.body, symbolize_names: true)
  end
end
