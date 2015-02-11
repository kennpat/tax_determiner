require 'rails_helper'

feature 'As a user when I first come to the site I want to see a landing page' do

  scenario 'A landing page is visited for the first time' do
    visit root_path
    expect(page).to have_content 'file.me'
  end

end
