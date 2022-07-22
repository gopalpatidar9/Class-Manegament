class MainController < ApplicationController
  def index
    if session[:createclass_id]
      @createclass = Createclass.find_by(id: session[:createclass_id])
    end
  end
end
