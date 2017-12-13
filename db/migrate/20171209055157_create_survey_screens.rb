class CreateSurveyScreens < ActiveRecord::Migration[5.1]
  def change
    create_table :survey_screens do |t|
      t.integer :screen_type
      t.string :short_text
      t.text :long_text
      t.string :button_text
      t.references :survey_type, foreign_key: true

      t.timestamps
    end
  end
end
