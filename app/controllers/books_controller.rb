class BooksController < ApplicationController
  def show
    @book = Book.find(params[:id])
    @average_rating = @book.reviews.average_rating
    @highest_rating = @book.reviews.highest_rating
    @lowest_rating = @book.reviews.lowest_rating
  end
end
