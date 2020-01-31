class BooksController < ApplicationController
	def index
		@books = Book.all
		@book =Book.new
    end

	def new
		@book = Book.new
	end

    def create
  	    book = Book.new
  	    book.save
  	    redirect_to 
    end

	private
	def  user_params
    params.require(:user).permit(:name, :introduction, :profile_image_id)

    end

end
