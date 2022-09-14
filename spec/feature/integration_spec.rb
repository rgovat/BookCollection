# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'JK Rowling'
    fill_in 'Price', with: 20
    select "2005", :from => "book_date_1i"
    select "7", :from => "book_date_2i"
    select "19", :from => "book_date_3i"
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
 
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'JK Rowling'
    fill_in 'Price', with: 20
    select "2005", :from => "book_date_1i"
    select "7", :from => "book_date_2i"
    select "19", :from => "book_date_3i"
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('JK Rowling')
  end

  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'JK Rowling'
    fill_in 'Price', with: 20
    select "2005", :from => "book_date_1i"
    select "7", :from => "book_date_2i"
    select "19", :from => "book_date_3i"
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content(20)
  end

  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'JK Rowling'
    fill_in 'Price', with: 20
    select "2005", :from => "book_date_1i"
    select "7", :from => "book_date_2i"
    select "19", :from => "book_date_3i"
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('2022-09-13')
  end


end