class CoachingController < ApplicationController
  def answer
    @question = params[:query]
    @answer = coach_answer_enhanced(@question)
  end

  def coach_answer(question)
    if question.include? "?"
      return "Silly question, get dressed and go to work!"
    elsif question == "I am going to work right now!"
      return ""
    else
      return "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(question)
    if question == "I AM GOING TO WORK RIGHT NOW!"
      return ""
    elsif question == question.upcase
      return "I can feel your motivation! #{coach_answer(question)}"
    elsif question != question.upcase
      return coach_answer(question)
    end
  end

  def ask
  end
end

