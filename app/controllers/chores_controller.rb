class ChoresController < ApplicationController

    def new 
        @chore = Chore.new
    end 
end
