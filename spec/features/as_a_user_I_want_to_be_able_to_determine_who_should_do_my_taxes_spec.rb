require 'rails_helper'

feature 'Determine who should do my taxes', %{
  As a user
  I want to be able to determine who should do my taxes
  So that I can get the right service level
} do
  scenario 'A user with no prep experience tries to find out what level of tax service they need' do
    visit root_path
    click_on 'Get Started'

    expect(page).to have_content 'The Basics:'
    expect(page).to have_content 'Type of return I need help with'
    select 'Individual'
    click_on 'Submit'
    expect(page).to have_content 'What is your skill level?'
    select 'Slim to none'
    select 'Massachusetts'
    fill_in 'return_filer_email', with: 'test123@test.com'
    expect(page).to have_content 'Select all of the following that apply to you:'
    check 'I got married'
    check 'I worked in multiple states'
    check 'I got a notice from the IRS during the year'
    click_on 'Submit'

    expect(page).to have_content 'You should probably see a CPA'
  end

  scenario 'A user gets forgets to add their email address and other important data' do
    visit root_path
    click_on 'Get Started'
    select 'Individual'
    click_on 'Submit'
    click_on 'Submit'

    expect(page).to have_content 'Filer email is invalid'
  end
end
