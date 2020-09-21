require 'rails_helper'

RSpec.describe Tone do
  it "should make a tone obj" do
    tone = Tone.new({'score': 0.87877,
                      'tone_id': 'joy',
                      'tone_name': 'Joy'
      })
  end
end
