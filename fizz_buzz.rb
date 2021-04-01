# frozen_string_literal: true

def fizz_buzz(number)
  if (number % 15).zero?
    'Fizz Buzz'
  elsif (number % 3).zero?
    'Fizz'
  elsif (number % 5).zero?
    'Buzz'
  else
    number.to_s
  end
end
