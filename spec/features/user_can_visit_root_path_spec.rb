require 'rails_helper'

describe "User can visit root path" do
  it "to see a search form" do
    visit '/'

    expect(current_path).to eq(root_path)
    expect(page).to have_content('Welcome to Poetry and Emotion')
    expect(page).to have_selector('input')
  end
  it "to search by author name" do
    visit root_path
    fill_in "author", with: 'Emily'
    click_on "Get Poems"
    expect(current_path).to eq(search_path)

    expect(page).to have_css('.poem', count: 10)
    within(first('.poem')) do
      expect(page).to have_css('.title')
      title = find('.title').text
      expect(title).not_to be_empty
      expect(page).to have_css('.author')
      author = find('.author').text
      expect(author).not_to be_empty
      expect(page).to have_css('.content')
      content = find('.content').text
      expect(content).not_to be_empty
      expect(page).to have_css('.tone')
      tone = find('.tone').text
      expect(tone).not_to be_empty
    end
  end
end
