class MainController < ApplicationController
    def index
        flash[:notice] = "flash notice"
        flash[:alert] = "flash alert"
    end
end
