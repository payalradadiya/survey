class SurveyType < ApplicationRecord
	has_many :survey_questions
	has_many :survey_screens
end
