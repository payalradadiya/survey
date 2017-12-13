class QuestionType < ApplicationRecord
	enum control_type: [:short_string, :long_text, :date, :rating, :dropdown]
end
