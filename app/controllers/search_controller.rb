class SearchController < ApplicationController
  def index
    author = params[:author]
    @poems = PoetryFacade.get_poems(author, 10)
  end
end
