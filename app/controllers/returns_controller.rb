class ReturnsController < ApplicationController

  def show
    @return = Return.find(params['id'])
    #I think I can move most of this logic into the model, to move to a skinny controller fat model style
    if @return.filer_experience == 'Slim to none'
      @score = 20
    elsif @return.filer_experience == 'Some experience'
      @score = 10
    else
      @score = 0
    end
    # if the score determination logic is moved to the model this will need to be refactored
    @return.questions.each do |question|
      @score = @score + question.score_value
    end
    # if the score determination logic is moved this will need to be refactored
    if @score < 20
      @service_determination = 'You can probably handle this yourself'
    elsif @score < 50
      @service_determination = 'You probably need some help with your return'
    else
      @service_determination = 'You should probably see a CPA'
    end

  end

  def new
    @return = Return.new
  end

  def create
    @return = Return.new(return_params)
    if @return.save
      #instead of redirecting to the index this will go to the edit/update portion of the controller
      redirect_to edit_return_path(@return.id), notice: 'Return created successfully'
    else
      render :new
    end
  end

  def edit
    @return = Return.find(params[:id])
  end

  def update
    @return = Return.find(params[:id])
    @return_questions = params[:return]['question_ids']
    if @return.update(return_params)
      @return_questions.each do |return_question|
        if return_question != ''
          question = Question.find(return_question.to_i)
          assigned_question = ReturnQuestion.new(question_id: question.id, return_id: @return.id)
          assigned_question.save
        end
      end
      redirect_to return_path(@return), notice: 'return updated successfully'
    else
      render :edit
    end
  end

  private

  def return_params
    params.require(:return).permit(:id, :filer_email, :filer_state, :return_type)
  end
end
