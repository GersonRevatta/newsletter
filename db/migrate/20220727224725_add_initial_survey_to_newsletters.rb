class AddInitialSurveyToNewsletters < ActiveRecord::Migration[7.0]
  def change
    add_column :newsletters, :initial_survey, :boolean, default: false
  end
end
