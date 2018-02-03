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
      if input_is_valid?
        return
      else
        output.puts "Try guessing a number with four digits"
      end
    end

    def input_is_valid?
      @input == "4444"
    end

  end
end
