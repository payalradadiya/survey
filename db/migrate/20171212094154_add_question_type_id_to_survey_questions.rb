class AddQuestionTypeIdToSurveyQuestions < ActiveRecord::Migration[5.1]
  def change
    add_reference :survey_questions, :question_type, foreign_key: true
  end
end
