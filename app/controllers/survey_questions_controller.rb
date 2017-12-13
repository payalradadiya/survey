class SurveyQuestionsController < ApplicationController
	expose :survey_question
	expose :question_type

	expose :survey_questions do
		SurveyQuestion.all
	end
	expose :survey_types do
    SurveyType.all
  end

  def create
  	survey_question.save
  end
	
	private
	def survey_question_params
		params.require(:survey_question).permit(:id, :question_title, :question_hint, :is_required, :order, :survey_type_id)
	end
end
