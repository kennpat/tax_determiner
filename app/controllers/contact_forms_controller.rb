class ContactFormsController < ApplicationController
  def new
    @contact_form = ContactForm.new
  end

  def create
    @contact_form = ContactForm.new(form_params)
    if @contact_form.valid?
      UserMailer.contact_mailer(@contact_form).deliver_now
      redirect_to root_path, notice: 'Your message has been sent'
    else
      render :new
    end
  end

  private

  def form_params
    params.require(:contact_form).permit(:email, :name, :message)
  end
end
