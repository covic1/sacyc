class TableController < ApplicationController
	def index
		render json:Table.all
  	end
  	def new
		t = Table.new
		t.descripcion = params[:descripcion]
		f.save
		render json:"se guardo"
 	end
end
