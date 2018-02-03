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
      secret_number_array = []
      input_array = []
      secret_number = @secret_number.split(//)
      input = @input.split(//)
      secret_number_array.push(secret_number)
      input_array.push(input)

      if secret_number_array[0] == input_array[0]
        output.puts "+"
      elsif secret_number_array[1] == input_array[1]
        output.puts "+"
      elsif secret_number_array[2] == input_array[2]
        output.puts "+"
      elsif secret_number_array[3] == input_array[3]
        output.puts "+"
      end
    end

    def has_won?
      @input == @secret_number
    end
  end
end
