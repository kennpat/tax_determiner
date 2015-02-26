require 'rails_helper'

feature 'as a user i want to be able to contact file.me', %{
  As a user
  I want to be able to contact the dev team
  So that I can give them my feedback
} do

  scenario 'user sends an email to us using the contact form' do
    visit root_path
    click_on 'Contact Us'
    fill_in 'Name', with: 'Patrick Kennedy'
    fill_in 'Email', with: 'test@test.com'
    fill_in 'Message', with: 'This is an awesome website!'
    click_on 'Send Message'
    expect(ActionMailer::Base.deliveries.size).to eql(1)
    last_email = ActionMailer::Base.deliveries.last
    expect(last_email).to have_content 'neil@dnstartups.com'
    expect(last_email).to have_content 'test@test.com'
  end

  scenario 'a user tries to submit a blank form and is presented with errors' do
    visit new_contact_form_path
    click_on 'Send Message'
    expect(page).to have_content "Name can't be blank"
    expect(page).to have_content "Email can't be blank"
    expect(page).to have_content 'Email is invalid'
    expect(page).to have_content "Message can't be blank"
  end

end
