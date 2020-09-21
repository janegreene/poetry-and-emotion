class ToneAnalyzerService
  def self.sentiment_analysis(lines)
    url = "https://api.us-south.tone-analyzer.watson.cloud.ibm.com/instances/bd1ebbae-b02e-4f46-8fd8-31afb5c63c9a"
    conn = Faraday.new(url) do |connection|
      connection.basic_auth("apikey", ENV['ibm_api'])
    end
    response = conn.get("/v3/tone") do |faraday|
      faraday.params['text'] = lines
      faraday.params['version'] = "2017-09-21"
    end
    json = JSON.parse(response.body, symbolize_names: true)
    tones= json[:document_tone][:tones].map do |tone|
      tone[:tone_name]
    end
  end
end
