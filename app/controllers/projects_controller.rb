class ProjectsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def new
    @project = Project.new
  end

  def index
    @projects = Project.all
  end

  def create
    current_user.projects.create(project_params)

    redirect_to projects_path
  end

  private

  def project_params
    params.require(:project).permit(:title, :description)
  end

end
