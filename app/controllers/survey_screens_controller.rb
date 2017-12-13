class SurveyScreensController < ApplicationController
	expose :survey_screen

	expose :survey_types do
    SurveyType.all
  end

  expose :survey_screens do
    SurveyScreen.all
  end



	def create
		@survey_screen = SurveyScreen.new(survey_screen_params)
		p '--------------------'
		p @survey_screen.errors
		p '=================='
		if @survey_screen.save!
			redirect_to survey_screens_path
		end
	end

	private
	def survey_screen_params
		params.require(:survey_screen).permit(:id, :screen_type, :short_text, :long_text, :button_text, :survey_type_id)
	end
end
