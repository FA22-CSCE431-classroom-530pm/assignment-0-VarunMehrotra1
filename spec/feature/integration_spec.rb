# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    # fill_in 'author', with: 'JK Rowling'
    # fill_in 'Price', with: 30
    # fill_in 'Date', with: '2001-10-01'
    click_on 'Create Book'
    visit books_path
    # expect(page).to have_content('harry potter')
    # expect(page).to have_content('JK Rowling')
    # expect(page).to have_content(30)
    # expect(page).to have_content('2001-10-01')
  end
end