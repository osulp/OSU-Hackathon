class RequestController < ApplicationController
  respond_to :html, :json

  def index
    @requests = Request.all
  end

  def new
    @request = Request.new
  end

  def show
    @request=Request.find(params[:id])
  end

  def create
    @request = Request.new(request_params)
    flash[:success] = "Successfully created request!" if @request.save
    respond_with @request, :location => request_index_path 
  end

  private

    def request_params
      params.require(:request).permit(:conference, :telephone_number, :destination_city, :dates, :reason, :webinar, :attendance_goals)
    end
end
