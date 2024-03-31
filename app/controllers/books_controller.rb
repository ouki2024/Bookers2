class BooksController < ApplicationController
    
    def new
        @book = Book.new
    end
    
    def create
        @book = Book.new(book.params)
        @book.book_id = current_user.id
        if @book.save
            redirect_to book_path
        else
            render :index
        end
    end
    
    def index
        
    end
    
    def show
    end
    
    def edit
    end
    
    def update
    end
    
    def destroy
    end
    
    private
    
    def book_params
        params.require(:book).permit(:title, :opinion)
    end
    
    
    
end
