class NewslettersController < ApplicationController
  before_action :set_vars, only: [:index, :create]
  def index
    @newsletter = Newsletter.new
  end

  def create
    @newsletter = Newsletter.new(newsletter_params)
    if @newsletter.save
      flash[:notice] = 'Successfully completed'
      redirect_to root_path
    else
      flash[:notice] = ''
      render :index
    end
  end

  private

  def newsletter_params
    params.require(:newsletter).permit(:email, preferences: [])
  end

  def set_vars
    @preference_types = Newsletter.preference_types
  end
end
