class BooksController < ApplicationController

  def index
    @books = Book.all
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    book = Book.find(params[:id])
    if book.update(book_params)
      redirect_to book_path(book)
      flash[:notice] = "Book was successfully updated."
    else
      rennder:show
    end
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to book_path(@book)
      flash[:notice] = "Book was successfully created"
    else
      rennder:show
    end
  end

  def destory
    book = Book.find(params[:id])
    book.destroy
    redirect_to book_path
  end

  private
    def book_params
      params.require(:book).permit(:title, :body)
    end 
end
