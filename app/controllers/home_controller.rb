class HomeController < ApplicationController
  layout "home", only: [:index]
  layout "start", only: [:start]

  def index
  end

  def start
    @project = Project.new
    @categories = Category.all
  end

end
