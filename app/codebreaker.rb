class Codebreaker

  class Game
    attr_reader :output
    attr_reader :secret_number
    NUMBER_LENGTH = 4

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
      @input.length != NUMBER_LENGTH
        output.puts "Please try guessing a number with four digits"
    end

    def length_correct?
      @input.length == NUMBER_LENGTH
    end



  end
end
