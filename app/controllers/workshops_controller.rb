class WorkshopsController < ApplicationController

    def index
        @workshopL = Workshop.all
    end

end
