require 'rails_helper'

describe 'User' do
  context 'goes to book show page' do
    it 'should display the average rating' do
      book1 = Book.create!(title: 'War and Peace')
      user1 = User.create!(name: 'Chekhov')
      user1.reviews.create!(body: 'This is a really long book. I prefer plays.', rating: 1, book: book1)

      book1 = Book.create!(title: 'War and Peace')
      user2 = User.create!(name: 'Dostoevsky')
      user2.reviews.create!(body: 'This book is mediocre. I could do better', rating: 3, book: book1)

      visit book_path(book1)

      expect(page).to have_content('Average Rating: 2')
    end
  end
end
