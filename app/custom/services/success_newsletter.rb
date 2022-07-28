class Services::SuccessNewsletter
  def self.send_mail email
    NewslettersMailer.success(email).deliver_now
    SurveysMailer.by_newsletter(email).deliver_now
  end
end
