class ProjectsController < ApplicationController
  def index
    @projects = Project.all.order("created_at DESC")
  end
end
