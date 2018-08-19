class FoodController < ApplicationController
	def index	
		render json:Food.all
  	end

  	def create
  		Food.new(params[:food])
  		json:item_params
  	end
  	def new
		f = Food.new
		f.descripcion = params[:descripcion]
		f.urlImg = params[:urlImg]
		f.precio = params[:precio]
		f.save
	  	#Food.new(f)
	  	render json:"se guardo"
 	end

end

