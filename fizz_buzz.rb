# frozen_string_literal: true

def fizz_buzz(number)
  if number % 15 == 0
    'Fizz Buzz'
  elsif number % 3 == 0
    'Fizz'
  elsif number % 5 == 0
    'Buzz'
  else
    number.to_s
  end
end

(1..100).each do |i|
  puts fizz_buzz(i)
end
