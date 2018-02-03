class Codebreaker
  class Game
    attr_reader :output

    def initialize(output)
      @output = output
    end

    def start(secret_number)
      @secret_number = secret_number

      output.puts "Welcome to Codebreaker"
      output.puts "Enter guess:"
    end

    def guess(input)
      @input = input
      output.puts "Try guessing a number with four digits" unless input.length == 4

      if input != @secret_number
        output.puts ""
      end
      if has_won?
        output.puts "++++"
      end
      calc_exact_matches
    end

    def calc_exact_matches
      secret_number = @secret_number.split(//)
      input = @input.split(//)

      if secret_number[0] == input[0]
        output.puts "+"
      elsif secret_number[1] == input[1]
        output.puts "+"
      elsif secret_number[2] == input[2]
        output.puts "+"
      elsif secret_number[3] == input[3]
        output.puts "+"
      else
        output.puts ""
      end
    end

    def calc_number_matches
    end

    def has_won?
      @input == @secret_number
    end
  end
end
