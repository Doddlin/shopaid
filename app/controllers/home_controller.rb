class HomeController < ApplicationController

    def index
        @helpers = User.where(ishelper: true).count
    end
end
