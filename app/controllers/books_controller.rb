class BooksController < ApplicationController
  def index
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "successfully"
      redirect_to book_path(@book)
    else
      render :index
    end
  end
  
  private
  def book_params
    params.require(:book).permit(:title,:body)
  end
end
