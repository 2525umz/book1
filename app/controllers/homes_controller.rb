class HomesController < ApplicationController
def top
 @book =Book.new
end

def create
 @book = Book.new(book_params)
 @book.save
redirect_to book_path(book.id)

end

def index
 @book = Book.all
end

def show
 @book = Book.find(params[:id])
end

private
def book_params
 params.require(:book).permit(:title, :body)
end
end