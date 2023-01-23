class IncidentsController < ApplicationController
  
  before_action :authenticate_user! #, except:[:index]
  def index
    @incidents = Incident.all
  end

end
