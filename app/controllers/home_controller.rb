class HomeController < ApplicationController
  layout "home", only: [:index]
  layout "start", only: [:start]

  def index
  end

  def start
  end

end
