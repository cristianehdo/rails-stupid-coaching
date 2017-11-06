class QuestionsController < ApplicationController
 def ask
  end

  ANSWER = ["Great!", "Silly question, get dressed and got to work", "I don't care, get dressed and go to work!"]
  def answer
    @question = params[:question]
    if @question == "I am going to work"
      @answer = ANSWER[0]
    elsif @question.include? "?"
      @answer = ANSWER[1]
    else
      @answer = ANSWER[2]
    end
  end
end
