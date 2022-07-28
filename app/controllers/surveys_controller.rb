class SurveysController < ApplicationController
  before_action :set_newsletter, only: %i[newsletter create]
  def newsletter
    @questions = Question.all
  end

  def create
    flash[:notice] = "Your 10% discount code is #{Services::Code.generate} Gracias"
    @newsletter.update(initial_survey: true)
    redirect_to newsletter_surveys_url(@newsletter.code)
  end

  private

  def set_newsletter
    @newsletter = Newsletter.find_by(code: params[:code])
  end
end
