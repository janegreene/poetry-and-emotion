class SearchController < ApplicationController
  def index
    conn = Faraday.new(url: "https://poetrydb.org")
    response = conn.get("/author/#{params[:author]}")
    json = JSON.parse(response.body, symbolize_names: true)
    @poems = Poem.get_poems(json)
  end
end
