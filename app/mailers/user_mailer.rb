class UserMailer < ApplicationMailer
  default from: 'form@file.me'
  def contact_mailer(contact_form_detail)
    @contact_form_detail = contact_form_detail
    binding.pry
    mail to: 'file.me@dnstartups.com', subject: 'File.me contact form submission'
  end
end
