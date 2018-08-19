class OrderController < ApplicationController
	def index
		o=Order.new
		o.cantidad=1
		o.status=1
		o.total=50.0
		o.food_id=1
		o.table_id=1
		#o.save
		render json:Order.all
	end
	def newsOrders
	 	params[:order].each do |id, attrs|
	 		json = attrs.to_json
			o = Order.new
			o.from_json(json)
	 		o.save
	  	end
		render json:"Se guardo"
	end
	def requireOrdersTable
	 	#status=params[:status]
	 	#table_id=params[:table_id]
		render json:Order.where(status:params[:status],table_id:params[:table_id]) #params[:status]
	end
	def updateStatusOrdersTable
		users = Order.where(status:params[:status],table_id:params[:table_id])
		users.update(status:1)
		render json:"Se actualizo"
	end
end
