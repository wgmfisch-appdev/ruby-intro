class ProgramsController < ApplicationController
  def home
    # Your code goes below.

    @your_output = "Replace this string with your output"

    render("programs_templates/home.html.erb")
  end

  def first_program
    # Your code goes below.

    @your_output = "Replace this string with your output"

    render("programs_templates/first_program.html.erb")
  end

  def second_program
    # Your code goes below.

    @your_output = "Replace this string with your output"

    render("programs_templates/second_program.html.erb")
  end

  def third_program
    numbers = (1..999).to_a

    # Your code goes below.

    @your_output = "Replace this string with your output"

    render("programs_templates/third_program.html.erb")
  end
end
