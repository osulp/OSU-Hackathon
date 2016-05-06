class RequestController < ApplicationController
  def index
    @requests = Request.all
  end

  def new

  end
end
