module Effects
  def self.loud(loudness)
    -> (words) do
      words.upcase + '!' * loudness
    end
  end
end