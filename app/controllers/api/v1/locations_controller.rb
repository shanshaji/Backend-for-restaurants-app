module Api
	module V1
		class LocationsController < ApplicationController
			def index
				@locations = Location.all
				@locations_data = []
				@locations.each do |location|
					location = location.attributes.merge({"city_name" => location.city.name})
					@locations_data.push(location)
				end
				render json: @locations_data				
			end
		end
	end
end