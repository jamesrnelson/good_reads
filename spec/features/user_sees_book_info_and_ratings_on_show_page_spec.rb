require 'rails_helper'

describe 'User' do
  context 'goes to book show page' do
    it 'should see the information and ratings of that book' do
      book1 = Book.create!(title: 'War and Peace')
      user1 = User.create!(name: 'Chekhov')
      user1.reviews.create!(body: 'This is a really long book. I prefer plays.', rating: 1, book: book1)

      visit book_path(book1)

      expect(page).to have_content('War and Peace')
      expect(page).to have_content('Chekhov')
      expect(page).to have_content('1')
    end
  end
end
