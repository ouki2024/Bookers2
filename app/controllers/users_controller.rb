class UsersController < ApplicationController
    
    def index
    end
    
    def show
        @user = Book.find(params[:id])
    end
    
    def edit
    end
    
    def update
    end
    
    
    private
    def user_params
        
    params.require(:user).permit(:name, :image, :introduction)  end
    
    
end
