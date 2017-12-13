class AddColumnsToSurveyQuestions < ActiveRecord::Migration[5.1]
  def change
  	add_column :survey_questions, :date, :integer
  	add_column :survey_questions, :date_separator, :integer
  	add_column :survey_questions, :rating, :integer
  	add_column :survey_questions, :rating_number, :integer
  end
end
