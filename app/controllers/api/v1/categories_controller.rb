module Api
	module V1
		class CategoriesController < ApplicationController
			respond_to :json
			def index
				# categories = Category.all
				# render json: categories
				respond_with Category.all
			end
			def create
				@category= Category.new(category_params)
				@category.save
			end
			def show
				@category = Category.find(params[:id])
				respond_with @category
			end
			private
			def category_params
				params[:category].permit(:id,:name)
			end
		end
	end
end