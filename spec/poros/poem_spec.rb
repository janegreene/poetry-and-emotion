require 'rails_helper'

RSpec.describe Poem do
  it 'can make a poem' do
    title = 'Not at Home to Callers'
    author = 'Emily Dickinson'
    lines =  [
      'Not at Home to Callers',
      'Says the Naked Tree --',
      'Bonnet due in April --',
      'Wishing you Good Day --'
      ]
    linecount = 4
    poem = Poem.new(title, author, lines, linecount)
    expect(poem.linecount).to eq(4)
    expect(poem.text).to eq(lines.join(', '))
    expect(poem.title).to eq(title)
    expect(poem.author).to eq(author)
  end
  it 'can set tone' do
    title = 'Not at Home to Callers'
    author = 'Emily Dickinson'
    lines =  [
      'Not at Home to Callers',
      'Says the Naked Tree --',
      'Bonnet due in April --',
      'Wishing you Good Day --'
      ]
    linecount = 4
    poem = Poem.new(title, author, lines, linecount)
    poem.set_tones([Tone.new([{'score': 0.87877,
                                  'tone_id': 'joy',
                                  'tone_name': 'Joy'}])])
    expect(poem.tones[0].name).to eq('Joy')
  end
end
