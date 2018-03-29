module Api
	module V1
		class RestaurantsController < ApplicationController
			def show
				@restaurants = Restaurant.find(params[:id])
				@restaurants_api = []
				@restaurants=@restaurants.attributes.merge({"city_name" => @restaurants.city.name,"location_name" => @restaurants.location.name})
				@restaurants_api.push(restaurant)
		 		render json: @restaurants_api
			end
		end
	end
end