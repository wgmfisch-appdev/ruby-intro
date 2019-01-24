class ProgramsController < ApplicationController
  def home
    my_birthday = Time.parse("December 16, 1986")
    today = Time.now
    seconds_since_i_was_born = today - my_birthday

    @your_output = seconds_since_i_was_born
    
    first = "Will"
    last = "Fischer"
    
    @first_then_last = first + " " + last
    @last_then_first = last + " " + first

    # @your_output = ["heads","tails"].sample

    render("programs_templates/home.html.erb")
  end

  def first_program
    # Your code goes below.
    the_number = rand(3)
    if the_number == 1
      @your_output = "rock, tie"
    elsif the_number == 2
      @your_output = "paper, lose"
    else
      @your_output = "scissors, win"
    end

    render("programs_templates/first_program.html.erb")
  end

  def second_program
      our_numbers = [4, 10, 6]        # Create an array of numbers
      squared_numbers = []            # Create an empty array

      our_numbers.each do |num|       # For each element in numbers, (refer to it as "num")
      square = num * num            # Square the number
      squared_numbers.push(square)  # Push it into the squared_numbers array
  end
  @your_output = squared_numbers.sum  # Sum the squares

    render("programs_templates/second_program.html.erb")
  end

  def third_program
    numbers = (1..999).to_a
    number_list = []

    numbers.each do |number|
      if number % 3 == 0
        number_list.push(number)
      elsif number % 5 == 0 && number % 3 != 0
        number_list.push(number)
      end
    end

    @your_output = number_list.sum.to_s

    render("programs_templates/third_program.html.erb")
  end
end
