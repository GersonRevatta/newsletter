if Rails.env.development?
  ActionMailer::Base.delivery_method = :smtp
  ActionMailer::Base.smtp_settings = {
    address:              'mail.cuestionariosmedic.com',
    port:                 '465',
    domain:               'cuestionariosmedic.com',
    user_name:            'soporte@cuestionariosmedic.com',
    password:             '}YyEuXtAtVgw',
    authentication:       :plain,
    enable_starttls_auto: true,
    tls:                  true,
    ssl:                  true,
    openssl_verify_mode:  'none'
  }
end