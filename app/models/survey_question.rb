class SurveyQuestion < ApplicationRecord
  belongs_to :survey_type
  # enum date: [:MMDDYYYY, :DDMMYYYY, :YYYYMMDD]
  enum date_separator: [:/, :-]
  enum rating: [:stars, :users, :hearts]
end
