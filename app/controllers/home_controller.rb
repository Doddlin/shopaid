class HomeController < ApplicationController

    def index
        @helpers = User.where(ishelper: true).count
        @allhelpers = User.where(ishelper: true)
        @markers = @allhelpers.map do |helper|
            {
                latlng: [helper[:lat], helper[:long]],
            }
        end
    end
end
