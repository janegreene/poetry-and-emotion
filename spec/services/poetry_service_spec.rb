require 'rails_helper'

RSpec.describe "Poetry Service" do
  it "should fetch peotry data for a given term" do
    author = 'Emily'
    poems = PoetryService.get_poems_by_author(author)
    expect(poems).to be_an(Array)
    first_poem = poems[0]
    expect(first_poem).to have_key(:title)
    expect(first_poem[:title]).to eq("Not at Home to Callers")
    expect(first_poem).to have_key(:author)
    expect(first_poem[:author]).to eq("Emily Dickinson")
    expect(first_poem).to have_key(:linecount)
    expect(first_poem[:linecount]).to eq("4")
    expect(first_poem).to have_key(:lines)
    expect(first_poem[:lines]).to eq([
      "Not at Home to Callers",
      "Says the Naked Tree --",
      "Bonnet due in April --",
      "Wishing you Good Day --"
      ])
  end
end
