class HomeController < ApplicationController

    def index
        @helpers = User.where(ishelper: true).count
        @allhelpers = User.where.not(lat:nil)
        @circles = [max: 20, min: 5]


        @markers = @allhelpers.map do |helper|
            {
                latlng: [helper[:lat], helper[:long]]
            }
        end
    end
end
