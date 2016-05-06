require 'yaml'

class RequestController < ApplicationController
  respond_to :html, :json

  def index
    @requests = Request.all
  end

  def new
    @request = Request.new
    @departments =YAML.load(IO.read(File.join(Rails.root, 'orgchart.yml'))) 
  end

  def show
    @request=Request.find(params[:id])
  end

  def submitted_requests
    @requests = Request.all.where(:state => "Submitted")
  end

  def approve_requests
    @request=Request.find(params[:id])
    if current_user.role == "Manager"
      @request.state == "Budget"
    else
    end
    redirect_to request_index_path
  end

  def create
    @request = Request.new(request_params)
    @request.state = "Submitted"
    flash[:success] = "Successfully created request!" if @request.save
    respond_with @request, :location => request_index_path 
  end

  private

    def request_params
      params.require(:request).permit(:state, :conference, :telephone_number, :destination_city, :dates, :reason, :webinar, :attendance_goals)
    end
end
