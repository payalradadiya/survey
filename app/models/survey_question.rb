class SurveyQuestion < ApplicationRecord
  belongs_to :survey_type
  enum date: [:MMDDYYYY, :DDMMYYYY, :YYYYMMDD]
  enum date_separator: [:/, :-]
end
