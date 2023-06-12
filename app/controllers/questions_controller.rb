class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:ask]
    @answer = coach_answer
  end

  def coach_answer
    if @question.downcase == "i am going to work!"
      puts 'Great!'
    elsif @question.include?("?")
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
