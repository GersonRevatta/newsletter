class Services::Abstractapi
  include HTTParty

  def self.validate_mail? email
    response = HTTParty.get("https://emailvalidation.abstractapi.com/v1/?api_key=ad1b0376c7784e04a49410623525e48c&email=#{email}")
    response['quality_score'].to_f > 0.7 rescue false
  end
end
