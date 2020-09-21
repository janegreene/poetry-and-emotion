require 'rails_helper'

RSpec.describe 'Tone Analyzer Service' do
  it 'should get tone analyzer from IMBs terrible API' do
    lines = [
      'Not at Home to Callers',
      'Says the Naked Tree --',
      'Bonnet due in April --',
      'Wishing you Good Day --'
    ]
    poem = Poem.new('Not a Home to Callers', 'Emily Dickinson', lines, 4)
    tones = ToneAnalyzerService.sentiment_analysis(poem.text)
    expect(tones).to be_an(Array)
    expect(tones.length).to eq(1)
    expect(tones[0]).to be_a(Tone)
    expect(tones[0].tone_name).to eq('Joy')
  end
end
