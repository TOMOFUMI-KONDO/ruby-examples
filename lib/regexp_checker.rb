class RegexpChecker
  def check
    print 'Text?: '
    text = gets.chomp

    retry_count = 0
    begin
      print 'Pattern?: '
      pattern = gets.chomp
      regexp = Regexp.new(pattern)
    rescue RegexpError => e
      puts "Invalid pattern: #{e.message}"
      retry_count += 1

      if retry_count > 2
        puts 'The maximum number of attempt has been exceeded.'
        return
      end

      retry
    end

    matches = text.scan(regexp)
    if matches.size > 0
      puts "Matched: #{matches.join(', ')}"
    else
      puts 'Nothing matched.'
    end
  end

  def validate_pattern(pattern)
    true
  end
end