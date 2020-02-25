class PostBooksController < ApplicationController
def new
	@book =Book.new
end
def create
	@book = Book.new(book_params)
	@book.user_id = current_user.user_id
	if @book.save
		redirect_to book_path
		flash[:book]='Book was successfully created.'
	else
		render 'new'
	end
end
def edit
  	@book = Book.find(params[:id])
  end
  def update
  	@book = Book.find(params[:id])
  	if @book.update(book_params)
    redirect_to book_path(@book)
    flash[:book]='Book was successfully update.'
    else
    render 'edit'
def index
	@books = Book.all
end
def show
	@book = Book.find(params[:id])
end
def destroy
	@book =Book.find(params[:id])
	@book.destroy
	redirect_to books_path
end
private

    def post_image_params
        params.require(:books).permit(:title, :body)
    end
end
