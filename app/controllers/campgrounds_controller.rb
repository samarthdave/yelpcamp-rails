class CampgroundsController < ApplicationController
	
	before_action :find_campground, only: [:show, :edit, :update, :destroy]
	
    def index
        @campgrounds = Campground.all
    end
    
    def show
        @campground = Campground.find(params[:id])
    end
    
    def new
        @campground = Campground.new
    end
    
	def create
		@campground = Campground.new(campground_params)
       
		if @campground.save
       		flash[:success] = "Saved \"#{@campground.name}\"."
			redirect_to @campground
		else
			flash[:danger] = "Could not save campground."
			render 'new'
		end
	end

	def edit
	end
    
	def update
		if @campground.update(campground_params)
			flash[:success] = "Updated \"#{@campground.name}\"."
			redirect_to @campground
		else
			flash[:danger] = "Error updating campground."
			render 'edit'
		end
	end
  


	def destroy
		if @campground.destroy
			flash[:success] = "Deleted the campground."
		else
			flash[:danger] = "Could not delete the campground."
		end
    	redirect_to campgrounds_path
	end
  
    private
    
    	def find_campground
    		@campground = Campground.find(params[:id])
    	end
    
        def campground_params
           params.require(:campground).permit(:name, :url, :description) 
        end
    
end