class ProjectsController < ApplicationController
  respond_to :json, :html

  def index
  end

  def create
    @p = Project.new(params[:project])
    respond_with @p.save, :location => home_url
  end
end
