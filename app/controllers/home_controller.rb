class HomeController < ApplicationController
  def index
    @profiles = Profile.all
    @studentprofiles = Studentprofile.all
  end
end
