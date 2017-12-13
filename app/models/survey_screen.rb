class SurveyScreen < ApplicationRecord
	enum screen_type: [:welcome, :consent, :thank_you]
  belongs_to :survey_type
end
