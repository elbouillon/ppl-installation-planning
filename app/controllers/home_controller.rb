class HomeController < ApplicationController
  def index
    @installations_to_plan = Installation.to_plan.includes(:team, :project)
    @open_projects = Project.open
    @closed_projects = Project.closed
    @teams = Team.all
  end
end
