class CreateSurveyTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :survey_types do |t|
      t.string :title

      t.timestamps
    end
  end
end
