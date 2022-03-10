class WelcomeController < ApplicationController
  http_basic_authenticate_with name: "Diego", password: "diego"
  def index
  end
end
