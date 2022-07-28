class NewslettersMailer < ApplicationMailer
	default from: Settings.default_email_from

  def success email
    mail to: email, subject: "Successful subscription"
  end
end
