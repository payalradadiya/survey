class CreateSurveyQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :survey_questions do |t|
      t.string :question_title
      t.string :question_hint
      t.boolean :is_required, default: true
      t.integer :order
      t.references :survey_type, foreign_key: true

      t.timestamps
    end
  end
end
