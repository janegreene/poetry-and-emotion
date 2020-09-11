class SearchController < ApplicationController
  def index
    conn = Faraday.new(url: "https://poetrydb.org")
    response = conn.get("/author/#{params[:author]}")
    json = JSON.parse(response.body, symbolize_names: true)
    require "pry"; binding.pry
    @poems = Poem.new(json)
  end
end
