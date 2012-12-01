class InstallationsController < ApplicationController
  respond_to :json
  def index
    respond_with Installation.where(
      :start_on.gte => Time.at(params[:start].to_i),
      :end_on.lte => Time.at(params[:end].to_i)
    )
  end

  def move
    render json: Installation.find(params[:id]).move(params[:days])
  end

  def resize
    render json: Installation.find(params[:id]).resize(params[:days])
  end
end
