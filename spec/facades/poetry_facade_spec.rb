require 'rails_helper'

RSpec.describe "Poetry Facade" do
  it 'should fetch poetry data for a given search term' do
    author = 'Emily'
    response = PoetryFacade.get_poems(author, 10)
    expect(response).to be_an(Array)
    expect(response[0]).to be_a(Poem)
    expect(response.length).to eq(10)
  end
end
