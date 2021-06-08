class BooksController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to new_book_path
  end
  
  private
  def book_params
    # params.require(:book).
    params.permit(:title, :body)
  end
end
