class IncidentsController < ApplicationController
  
  before_action :authenticate_user!
  
  def index
    @incidents = Incident.all
  end

end
