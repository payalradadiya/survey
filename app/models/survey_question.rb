class SurveyQuestion < ApplicationRecord
  belongs_to :survey_type
  enum date: [:MMDDYYYY, :DDMMYYYY, :YYYYMMDD]
  enum date_separator: [:/, :-]
  enum rating: [:stars, :users, :thumbs_up, :crowns, :cats, :circles, :pencils, :clouds, :flags, :hearts]
  before_create :set_order
	def set_order
	  last_order = SurveyQuestion.maximum(:order)
	  self.order = last_order.to_i + 1
	end
end
