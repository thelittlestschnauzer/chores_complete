class ChoresController < ApplicationController
    before_action :set_chore, only: [:show, :edit, :update, :destroy]

    def new 
        @chore = Chore.new
    end 

    def create 
        @chore = Chore.create(chore_params)
        if @chore.save
            redirect_to chore_path(@chore)
        else
            render :new 
        end 
    end 

    def show 
    end 

    private 

    def chore_params
        params.require(:chore).permit(:task, :assign_to, :complete, :category_id, :tag_id)
    end 

    def set_chore
        @chore = Chore.find(params[:id])
    end 

end
