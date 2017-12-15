class ParticipantSurvey < ApplicationRecord
  belongs_to :survey_type
  belongs_to :survey_question
end
