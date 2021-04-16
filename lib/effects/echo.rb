module Effects
  def self.echo(rate)
    # -> (words) do
    #   words.split(' ').map do |word|
    #     word
    #       .split('')
    #       .map { |char| char * 2 }
    #       .join('')
    #   end
    #        .join(' ')
    # end
    -> (words) do
      words.chars.map { |c| c == ' ' ? ' ' : c * rate }.join
    end
  end
end