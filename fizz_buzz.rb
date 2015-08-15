class FizzBuzz
  attr_accessor :rules

  def initialize(rules = { 3 => 'Fizz', 5 => 'Buzz' })
    @rules = rules
  end

  def print_up_to(limit = 100)
    limit.times do |index|
      number = index + 1
      puts "#{number}: #{output_for(index + 1)}"
    end
  end

  alias_method :print, :print_up_to

  private

  def output_for(number)
    fizz_buzz_array = fizz_buzz_array_for(number)
    if fizz_buzz_array.empty?
      number
    else
      fizz_buzz_array.join
    end
  end

  def fizz_buzz_array_for(number)
    fizz_buzz_array = []
    rules.each do |number_to_divide_by, output|
      fizz_buzz_array << output if number % number_to_divide_by == 0
    end
    fizz_buzz_array
  end
end
