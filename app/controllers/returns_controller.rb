class ReturnsController < ApplicationController

  def show
    @return = Return.find(params['id'])
    @score = Return.score_determination(@return)
    @service_determination = Return.service_determination(@score)
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
      Return.return_question_adder(@return_questions, @return)
      redirect_to return_path(@return), notice: 'return updated successfully'
    else
      render :edit
    end
  end

  private

  def return_params
    params.require(:return).permit(:id, :filer_email, :filer_state, :return_type, :filer_experience)
  end
end
