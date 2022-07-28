class GoodnessValidator < ActiveModel::Validator
  def validate(record)
    record.errors.add(:email, "El mail, no esta presente") unless record.send(:email).present?
    record.errors.add(:preferences, "Debes elegir al menos una de las preferencias") unless record.send(:preferences).present?
    record.errors.add(:email, "El mail, #{record.send(:email)} no es valido, Escribe otro mail") unless (Services::Abstractapi.validate_mail? record.send(:email))
  end
end

class Newsletter < ApplicationRecord
  enum preference_type: ["Women’ s Fashion", "Men’s Fashion", "Children’s Fasshion"]
  validates :email, uniqueness: true, on: :create
  validates_with GoodnessValidator, fields: %i[email preferences]
  serialize :preferences, Array

  after_create :set_code, :send_confirmation

  def send_confirmation
    Services::SuccessNewsletter.send_mail email
  end

  def set_code
    update(code: Services::Code.generate)
  end
end
