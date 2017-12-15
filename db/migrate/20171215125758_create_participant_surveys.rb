class CreateParticipantSurveys < ActiveRecord::Migration[5.1]
  def change
    create_table :participant_surveys do |t|
      t.references :survey_type, foreign_key: true
      t.references :survey_question, foreign_key: true
      t.string :survey_question_answer
      t.string :survey_option_answer

      t.timestamps
    end
  end
end
