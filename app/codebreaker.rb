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
    end


    def has_won?
      @input == @secret_number
    end



  end
end
