class SurveyTypesController < ApplicationController
	expose :survey_type
	expose :survey_types do
    SurveyType.all
  end

	def create
		# survey_type = SurveyType.new(survey_type_params)
		if survey_type.save
			redirect_to survey_types_path
		end
	end

	private
	def survey_type_params
		params.require(:survey_type).permit(:id, :title)
	end
end