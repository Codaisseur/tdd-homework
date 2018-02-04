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
      
      if invalid_input?
        return false
      end

      if input != @secret_number
        output.puts ""
      end
      calc_exact_matches_one
      calc_exact_matches_two
      calc_exact_matches_three
      calc_one_number_match
      has_won
    end

    def calc_exact_matches_one
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

    def calc_exact_matches_two
      secret_number_combi = @secret_number.split(//).combination(2).to_a
      input_combi = @input.split(//).combination(2).to_a
      if secret_number_combi.each { |subarray| subarray.include?(input_combi)}
        output.puts "++"
      end
    end

    def calc_exact_matches_three
      secret_number_combi = @secret_number.split(//).combination(3).to_a
      input_combi = @input.split(//).combination(3).to_a
      if secret_number_combi.each { |subarray| subarray.include?(input_combi)}
        output.puts "+++"
      end
    end

    def calc_one_number_match
      if @secret_number.size == @input.size && @secret_number.delete(@input).empty?
        output.puts ""
      else
        output.puts "-"
      end
    end

    def has_won
      if @input == @secret_number
        output.puts "++++"
      end
    end

    def invalid_input?
      @input.length != 4
    end

    # def answers_one
    #   @output == 1
    # end

  end
end
