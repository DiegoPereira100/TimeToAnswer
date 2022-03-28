class Site::WelcomeController < SiteController
  def index
  end

  def index
    @questions = Question.includes(:answers).page(params[:page])
    end
end
