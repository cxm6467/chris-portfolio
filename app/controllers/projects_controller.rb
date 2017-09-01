class ProjectsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  def new
    @project = Project.new
  end

  def index
    @projects = Project.all
  end

  def create
    current_user.project.create(project_params)

    if @project.invalid?
      flash[:error] = '<strong>Could not save</strong> the data you entered is invalid.'
    end

    redirect_to projects_path
  end

  private

  def project_params
    params.require(:project).permit(:title, :description)
  end

end
