class Site::SearchController < ApplicationController
  def questions
    @questions = Question.search(params[:page], params[:term])
    end

  def questions
    @questions = Question. _search_(params[:page], params[:term])
    end
end
