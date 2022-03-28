class Site::SearchController < ApplicationController
  def questions
    @questions = Question.search(params[:page], params[:term])
    end
end
