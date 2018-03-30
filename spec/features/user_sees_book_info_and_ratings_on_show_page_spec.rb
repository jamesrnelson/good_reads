require 'rails_helper'

describe 'User' do
  context 'goes to book show page' do
    it 'should see the information and ratings of that book' do
      book1 = Book.create!(title: 'War and Peace')

      visit book_path(book1)

      expect(page).to have_content('War and Peace')
      expect(page).to have_content('War and Peace')
    end
  end
end
