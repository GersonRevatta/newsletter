class SurveysMailer < ApplicationMailer
  # Rails.application.reload_routes! 
  # include Rails.application.routes.url_helpers
	default from: 'soporte@cuestionariosmedic.com'#Settings.default_email_from
  # SurveysMailer.by_newsletter(email).deliver_now
  # SurveysMailer.by_newsletter('gersonrevatta@gmail.com').deliver_now
  def by_newsletter email
    @newsletter = Newsletter.find_by(email: email)
    mail to: email, subject: "Get a discount coupon"
  end
end