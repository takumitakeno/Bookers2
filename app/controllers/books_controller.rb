class BooksController < ApplicationController
	def index
		@books = Book.all
		@book = Book.new
        @user = current_user
        
    end

	def new
		@book = Book.new
	end

    def create
        @book = Book.new(book_params)
        @book.user_id = current_user.id
        if @book.save
        flash[:notice] = "Book was successfully created."
        redirect_to book_path(@book)
        else
        @user = current_user
        @books =Book.all
        render :index
        end
    end

    def show
    	@book =Book.find(params[:id])
    	@books = Book.all
    end
    def destroy
    	book =Book.find(params[:id])
    	book.destroy
    	redirect_to books_path
    end

    def edit
        @book = Book.find(params[:id])
        
    end

    def update
        book = Book.find(params[:id])
        book.update(book_params)
        redirect_to book_path
    end

	private
	def  book_params
        params.require(:book).permit(:title, :body)

    end

end
