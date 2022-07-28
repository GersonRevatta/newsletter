class SurveysMailer < ApplicationMailer
	default from: Settings.default_email_from
  def by_newsletter email
    @newsletter = Newsletter.find_by(email: email)
    mail to: email, subject: "Get a discount coupon"
  end
end