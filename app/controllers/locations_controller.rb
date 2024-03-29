class LocationsController < ApplicationController
	def new
		@location= Location.new
	end
	def create
		@location = Location.new(location_params)
		 if @location.save
			redirect_to @location
	   	else
			render 'new'
		end 
	end
	def show
		@location = Location.find(params[:id])
	end
	def edit
 	 @location = Location.find(params[:id])
	end
	
	def update
  		@location = Location.find(params[:id])
 
  		if @location.update(location_params)
    		redirect_to @location
  		else
    		render 'edit'
    	end
  	end
  	  	def destroy
  			@location = Location.find(params[:id])
  			@location.destroy
 
  			redirect_to locations_path
	end

	def index
       @location = Location.all
	end
	private
  def location_params
    params.require(:location).permit(:name, :streetname, :streetnumber, :twitter, :facebook, :category_ID, :open)
  end	

end

