class Site::WelcomeController < SiteController

  def index
    @questions = Question.includes(:answers).page(params[:page])
    end

  def index
    @questions = Question.last_questions(params[:page])
    end
    
end
