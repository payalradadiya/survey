class AddChioceToSurveyQuestions < ActiveRecord::Migration[5.1]
  def change
    add_column :survey_questions, :choice, :string
  end
end
