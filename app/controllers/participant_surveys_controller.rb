class ParticipantSurveysController < ApplicationController

	def index
		@participant = ParticipantSurvey.all
		@survey_questions = SurveyQuestion.find(params[:survey_type_id])
	end
end
