require 'rails_helper'

feature 'As a user when I first come to the site I want to see a landing page, a blog page, and an about page' do

  scenario 'A landing page is visited for the first time' do
    visit root_path
    expect(page).to have_content 'file.me'
  end

  scenario 'A user wants to view more information about file.me' do
    visit root_path
    click_on 'About'
    expect(page).to have_content 'About us'
  end

  scenario 'A user wants to checkout our blog page' do
    visit root_path
    click_on 'Blog'
    expect(page).to have_content 'Written by'
  end

end
