class GuessesController < ApplicationController

  def index
# params = {"first_num" => 4, "second_num" => 5, "third_num" => 6}

    @first = params["first_num"]
    @second = params["second_num"]
    @third = params["third_num"]

    g=Guess.new
    g.first_num = params["first_num"]
    g.second_num = params["second_num"]
    g.third_num = params["third_num"]
    g.save



    @list = Guess.all

    render ("guesses/index.html.erb")


  end


  def answer

    # params = {"q"=>"Increasing numbers"}

    @user_answer = params["q"]

    render ("guesses/answer.html.erb")
  end

end
