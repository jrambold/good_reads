class BooksController < ApplicationController
  def show
    @book = Book.find(params[:id])
    @reviews = @book.reviews
    @rating = @book.average
  end


end
