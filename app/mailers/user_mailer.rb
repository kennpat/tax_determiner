class UserMailer < ApplicationMailer
  def contact_form_emal(info)
    @info = info
    mail(to: 'dnstartups@gmail.com', subject: 'file.me contact form submission')
  end
end
