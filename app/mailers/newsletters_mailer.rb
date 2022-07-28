class NewslettersMailer < ApplicationMailer
	default from: 'soporte@cuestionariosmedic.com'#Settings.default_email_from

  def success email
    mail to: email, subject: "Successful subscription"
  end
end
