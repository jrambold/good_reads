require 'rails_helper'

describe "When I visit a book show page" do
  scenario "I see the book title and a list of reviews for that book" do
    book = Book.create!(title: "hello")
    user = User.create!(name: "jake")
    review = book.reviews.create!(body: "asdf", rating: 3, user_id: user.id)

    visit book_path(book)

    expect(page).to have_content(book.title)
    expect(page).to have_content(review.body)
    expect(page).to have_content(review.rating)
  end

  # scenario "I also see the review body and the user that created that review" do
  #
  # end
  #
  # scenario "I also see the rating 1-5 that the user gave the book" do
  #
  # end
end
